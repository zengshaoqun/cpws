<%--
  Created by IntelliJ IDEA.
  User: zsq
  Date: 2018/4/3
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<script src="/cpws/js/jquery-2.2.1.js"></script>
<script src="/cpws/js/vue.min.js"></script>
<style>
    .class1 {
        background: #444;
        color: #eee;
    }

    .class2 {
        background: #666;
        color: #aaa;
    }

    .alldiv {
        margin: 20px;
    }
</style>
<html>
<head>
    <title>vue.js practice</title>
</head>
<body>
<div id="test" class="alldiv">

    千米：<input type="text" v-model="kilometers">
    米：<input type="text" v-model="meters">
    <div id="app" style="height: 40px; width: 40px" v-bind:class="[active?class1:class2]"></div>
</div>
<div id="test2" class="alldiv">
    <button v-on:click="countAdd">增加1</button>
    <p>这个按钮被点击{{counter}}次.</p>
    输入框双向绑定<br/>
    输入年龄：<input type="number" v-model.number="age">
    <p>年龄：{{age}}</p>
    <br/>

    <input v-model="message" placeholder="edit...">
    <p>消息是： {{message}}</p>
    <p>textarea 元素:</p>
    <p style="white-space: pre">{{message2}}</p>
    <textarea rows="5" v-model="message2" placeholder="文本域输入"></textarea>
    <br/>复选框<br/>
    <p>单个复选框</p>
    <input type="checkbox" id="checkbox" v-model="checked">
    <label for="checkbox">{{checked}}</label>
    <p>多个复选框</p>
    <input type="checkbox" id="c1" value="c1" v-model="checkedArray">
    <label for="c1">option one</label>
    <input type="checkbox" id="c2" value="c2" v-model="checkedArray">
    <label for="c2">option second</label>
    <input type="checkbox" id="c3" value="c3" v-model="checkedArray">
    <label for="c3">option third</label>
    <br/>
    <span>选择的之为：{{checkedArray}}</span>
    <br/>单选按钮<br/>
    <input type="radio" id="male" value="M" v-model="gender">
    <label for="male">男</label>
    <input type="radio" id="female" value="F" v-model="gender">
    <label for="female">女</label>
    <br/>
    <span>选择的性别是：{{gender}}</span>
    <br/><br/>下拉框<br/>
    <select v-model="selected">
        <option value="">选择一个网站</option>
        <option value="www.runoob.com">Ronoob</option>
        <option value="www.google.com">Google</option>
    </select>
    <br/>
    <span>选择的网站是 {{selected}}</span>
</div>


</body>
<script>
    $(document).ready(function () {
        var vm = new Vue({
            el: '#test',
            data: {
                kilometers: 0,
                meters: 0,
                active: false,
                class1: 'class1',
                class2: 'class2',
            },
            methods: {},
            watch: {
                kilometers: function (val) {
                    this.kilometers = val;
                    this.meters = val * 1000;
                },
                meters: function (val) {
                    this.meters = val;
                    this.kilometers = val / 1000;
                }
            }
        });
        new Vue({
            el: '#test2',
            data: {
                counter: 0,
                message: '文本框',
                message2: '文本域',
                checked: false,
                checkedArray: [],
                gender: 'M',
                selected: '',
                age: 0,

            },
            methods: {
                countAdd: function (event) {
                    this.counter += 1;
                }
            },
            watch: {

            }
        });


        function destroyer(arr) {
            console.log(arguments);
            console.log(arguments.length);
            console.log("-------------------");
            var temp = new Array(0);
            for (var i = 1; i < arguments.length; i++) {
                temp.push(arguments[i])
            }
            arr = arguments[0].filter(function(currentValue,index,arr) {
                for (var j = 0; j < temp.length; j++) {
                    if (currentValue === temp[j]){
                        return false
                    }
                }
                return true;
            });
            console.log(arr);
            return arr;
        }

        destroyer([1, 2, 3, 1, 2, 3], 3);
    })

</script>
</html>
