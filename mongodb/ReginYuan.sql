/*
 Navicat Premium Data Transfer

 Source Server         : 本地MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 50005
 Source Host           : localhost:27017
 Source Schema         : ReginYuan

 Target Server Type    : MongoDB
 Target Server Version : 50005
 File Encoding         : 65001

 Date: 26/01/2022 18:01:11
*/


// ----------------------------
// Collection structure for counters
// ----------------------------
db.getCollection("counters").drop();
db.createCollection("counters");

// ----------------------------
// Documents of counters
// ----------------------------
db.getCollection("counters").insert([ {
    _id: ObjectId("61f104c6dc57000027007716"),
    "sequence_value": 100001
} ]);

// ----------------------------
// Collection structure for depts
// ----------------------------
db.getCollection("depts").drop();
db.createCollection("depts");

// ----------------------------
// Documents of depts
// ----------------------------
db.getCollection("depts").insert([ {
    _id: ObjectId("61f1040ddc57000027007715"),
    deptName: "开发部",
    userId: "10001",
    userName: "admin",
    userEmail: "163@163.com",
    parentId: [
        null
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);

// ----------------------------
// Collection structure for leaves
// ----------------------------
db.getCollection("leaves").drop();
db.createCollection("leaves");

// ----------------------------
// Documents of leaves
// ----------------------------
db.getCollection("leaves").insert([ {
    _id: ObjectId("61f10792dc57000027007719"),
    orderNo: "xj20202123",
    applyType: 1,
    startTime: ISODate("2022-01-26T00:00:01.995Z"),
    endTime: ISODate("2022-01-26T00:00:01.995Z"),
    applyUser: {
        userId: 10001,
        userName: "admin",
        userEmail: "163@163.com"
    },
    leaveTime: ISODate("2022-01-26T00:00:01.995Z"),
    reasons: "回家过年",
    auditUsers: "tom,admin",
    curAuditUserName: "tom",
    auditFlows: [
        {
            userId: 10002,
            userName: "tom",
            userEmail: "tom@163.com"
        },
        {
            userId: 10001,
            userName: "admin",
            userEmail: "163@163.com"
        }
    ],
    auditLogs: [
        {
            userId: 10002,
            userName: "tom",
            createTime: ISODate("2022-01-26T00:00:01.995Z"),
            remark: "同意",
            action: "审核通过"
        }
    ],
    applyState: 1,
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);

// ----------------------------
// Collection structure for menus
// ----------------------------
db.getCollection("menus").drop();
db.createCollection("menus");

// ----------------------------
// Documents of menus
// ----------------------------
db.getCollection("menus").insert([ {
    _id: ObjectId("61f0fea0dc57000027007714"),
    menuType: NumberInt("1"),
    menuName: "用户管理",
    menuCode: "",
    path: "/system/user",
    icon: "",
    component: "/views/User.vue",
    menuState: NumberInt("1"),
    parentId: [
        "61f10ee5dc5700002700771f"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f10813dc5700002700771a"),
    menuType: 1,
    menuName: "菜单管理",
    menuCode: "",
    path: "/system/menu",
    icon: "",
    component: "/views/Menu.vue",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f10850dc5700002700771b"),
    menuType: 1,
    menuName: "角色管理",
    menuCode: "",
    path: "/system/role",
    icon: "",
    component: "/views/Role.vue",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f10883dc5700002700771c"),
    menuType: 1,
    menuName: "部门管理",
    menuCode: "",
    path: "/system/dept",
    icon: "",
    component: "/views/Dept.vue",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f10ee5dc5700002700771f"),
    menuType: 1,
    menuName: "系统管理",
    menuCode: "",
    path: "/system/",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        null
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11045dc57000027007720"),
    menuType: 2,
    menuName: "新增",
    menuCode: "user-create",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f0fea0dc57000027007714"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11066dc57000027007721"),
    menuType: 2,
    menuName: "批量删除",
    menuCode: "user-delete",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f0fea0dc57000027007714"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11083dc57000027007722"),
    menuType: 2,
    menuName: "查看",
    menuCode: "user-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f0fea0dc57000027007714"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11120dc57000027007723"),
    menuType: 2,
    menuName: "查看",
    menuCode: "menu-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10813dc5700002700771a"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11192dc57000027007724"),
    menuType: 2,
    menuName: "创建",
    menuCode: "menu-create",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10813dc5700002700771a"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f111e5dc57000027007725"),
    menuType: 2,
    menuName: "查看",
    menuCode: "role-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10850dc5700002700771b"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11203dc57000027007726"),
    menuType: 2,
    menuName: "创建",
    menuCode: "role-create",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10850dc5700002700771b"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f1122adc57000027007727"),
    menuType: 2,
    menuName: "查看",
    menuCode: "dept-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10883dc5700002700771c"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11241dc57000027007728"),
    menuType: 2,
    menuName: "创建",
    menuCode: "dept-create",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f10ee5dc5700002700771f",
        "61f10883dc5700002700771c"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11293dc57000027007729"),
    menuType: 1,
    menuName: "审批管理",
    menuCode: "",
    path: "/audit",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        null
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f1130edc5700002700772a"),
    menuType: 1,
    menuName: "休假申请",
    menuCode: "",
    path: "/audit/leave",
    icon: "",
    component: "/views/leave",
    menuState: 1,
    parentId: [
        "61f11293dc57000027007729"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f1135adc5700002700772b"),
    menuType: 2,
    menuName: "查看",
    menuCode: "leave-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f11293dc57000027007729",
        "61f1130edc5700002700772a"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f11376dc5700002700772c"),
    menuType: 2,
    menuName: "申请休假",
    menuCode: "leave-create",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f11293dc57000027007729",
        "61f1130edc5700002700772a"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f113a3dc5700002700772d"),
    menuType: 1,
    menuName: "待我审批",
    menuCode: "",
    path: "/audit/approve",
    icon: "",
    component: "/views/approve",
    menuState: 1,
    parentId: [
        "61f11293dc57000027007729"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("menus").insert([ {
    _id: ObjectId("61f113dddc5700002700772e"),
    menuType: 2,
    menuName: "查看",
    menuCode: "approve-query",
    path: "",
    icon: "",
    component: "",
    menuState: 1,
    parentId: [
        "61f11293dc57000027007729",
        "61f113a3dc5700002700772d"
    ],
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);

// ----------------------------
// Collection structure for roles
// ----------------------------
db.getCollection("roles").drop();
db.createCollection("roles");

// ----------------------------
// Documents of roles
// ----------------------------
db.getCollection("roles").insert([ {
    _id: ObjectId("61f0fcefdc57000027007713"),
    roleName: "超级管理员",
    remark: "admin",
    permissionList: {
        checkedKeys: [
            "61f0fea0dc57000027007714",
            "61f10813dc5700002700771a",
            "61f10850dc5700002700771b",
            "61f10883dc5700002700771c",
            "61f10ee5dc5700002700771f",
            "61f11045dc57000027007720",
            "61f11066dc57000027007721",
            "61f11083dc57000027007722",
            "61f11120dc57000027007723",
            "61f11192dc57000027007724",
            "61f111e5dc57000027007725",
            "61f11203dc57000027007726",
            "61f1122adc57000027007727",
            "61f11241dc57000027007728",
            "61f11293dc57000027007729",
            "61f1130edc5700002700772a",
            "61f1135adc5700002700772b",
            "61f11376dc5700002700772c",
            "61f113a3dc5700002700772d",
            "61f113dddc5700002700772e"
        ],
        halfCheckedKeys: [ ]
    },
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("roles").insert([ {
    _id: ObjectId("61f10914dc5700002700771d"),
    roleName: "产品经理",
    remark: "产品经理",
    permissionList: {
        checkedKeys: [ ],
        halfCheckedKeys: [ ]
    },
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);
db.getCollection("roles").insert([ {
    _id: ObjectId("61f10927dc5700002700771e"),
    roleName: "测试",
    remark: "测试",
    permissionList: {
        checkedKeys: [ ],
        halfCheckedKeys: [ ]
    },
    updateTime: ISODate("2022-01-26T00:00:01.995Z"),
    createTime: ISODate("2022-01-26T00:00:01.995Z")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("61f0f74ddc57000027007712"),
    userId: NumberInt("10001"),
    userName: "admin",
    userPwd: "e10adc3949ba59abbe56e057f20f883e",
    userEmail: "163@163.com",
    mobile: "13668884488",
    sex: 0,
    deptId: "开发部",
    job: "经理",
    state: 1,
    role: 0,
    roleList: [
        "61f0fcefdc57000027007713"
    ],
    createTime: ISODate("2022-01-26T00:00:01.995Z"),
    lastLoginTime: ISODate("2022-01-26T00:00:01.995Z"),
    remark: "备注"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("61f10660dc57000027007717"),
    userId: 10002,
    userName: "tom",
    userPwd: "e10adc3949ba59abbe56e057f20f883e",
    userEmail: "tom@163.com",
    mobile: 13684557425,
    sex: 1,
    deptId: "开发部",
    job: "前端工程师",
    role: 0,
    state: 1,
    createTime: ISODate("2022-01-26T00:00:00.000Z"),
    lastLoginTime: ISODate("2022-01-26T00:00:00.000Z")
} ]);
