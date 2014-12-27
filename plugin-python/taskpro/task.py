#!/usr/bin/env python
# coding: UTF-8

import sqlite3


class task:
    ''' task '''

    def __init__(self, db_path = None):
        self.conn       = sqlite3.connect('.task.db')
        self.cursor     = self.conn.cursor()
        self.db_path    = db_path

    def build(self):
        self.cursor.execute('create table if not exists task \
                            (id integer primary key AUTOINCREMENT, \
                            name varchar(20))')
        self.cursor.rowcount

    def add(self, taskname):
        self.cursor.execute('insert into task(name) \
                            values(\'' + taskname + '\')')
        print "add ** " + taskname + " **"

    def show(self):
        self.cursor.execute('select * from task')
        values = self.cursor.fetchall()
        print "当前的任务: "
        print " 编号\t名称"
        for row in values:
            print "> " + str(row[0]) + "\t" + row[1].encode('utf8')
        # for row in self.cursor:
            # print row[0].encode('utf8')

    def delete(self, keyword):
        self.cursor.execute('drop from task where name = \''
                            + keyword + '\')')
        print "delete ** " + keyword + " **"

    def __del__(self):
        self.cursor.close()
        self.conn.commit()
        self.conn.close()
