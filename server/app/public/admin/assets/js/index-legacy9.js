System.register(["./element-plus-legacy.js","./@element-plus-legacy.js","./gather-legacy.js","./article-legacy.js","./js-cookie-legacy.js","./index-legacy.js","./@vue-legacy.js","./lodash-es-legacy.js","./async-validator-legacy.js","./@vueuse-legacy.js","./dayjs-legacy.js","./@ctrl-legacy.js","./@popperjs-legacy.js","./memoize-one-legacy.js","./normalize-wheel-es-legacy.js","./pinia-legacy.js","./pinia-plugin-persist-legacy.js","./vanilla-jsoneditor-legacy.js","./json-source-map-legacy.js","./@fortawesome-legacy.js","./natural-compare-lite-legacy.js","./@codemirror-legacy.js","./@lezer-legacy.js","./crelt-legacy.js","./style-mod-legacy.js","./w3c-keyname-legacy.js","./@replit-legacy.js","./codemirror-wrapped-line-indent-legacy.js","./fast-deep-equal-legacy.js","./fast-uri-legacy.js","./jmespath-legacy.js","./immutable-json-patch-legacy.js","./vue-router-legacy.js","./axios-legacy.js","./saduocss-legacy.js"],(function(e,t){"use strict";var l,a,s,n,c,i,r,o,u,g,d,p,y,h,m,j,f,C,w,b,k,S;return{setters:[e=>{l=e.f,a=e.F,s=e.M,n=e.N,c=e.P},e=>{i=e.G,r=e.E,o=e.v,u=e.H,g=e.I},e=>{d=e.l,p=e.g,y=e.a},e=>{h=e.c},null,e=>{m=e._},e=>{j=e.ad,f=e.o,C=e.c,w=e.M,b=e.Q,k=e.U,S=e.V},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],execute:function(){const t={class:"content-wrap"};e("default",m({name:"gather-index",setup:()=>({Edit:i,Delete:r,View:o,Search:u,Cpu:g}),data:()=>({keywords:"",tableData:[],multipleSelection:[],count:0,cur:1,step:0,params:{cid:0,title:"",shortTitle:"",tagId:"",attr:[],source:"",author:"",description:"",img:"",createdAt:new Date,updatedAt:new Date,content:"欢迎使用ChanCMS系统",status:"0",pv:1,link:""}}),computed:{},created(){this.list()},methods:{async list(){try{let e=await d(this.cur);200===e.code&&(this.tableData=[...e.data.list],this.count=e.data.count)}catch(e){console.log(e)}},handleCurrentChange(e){this.cur=e,this.list()},toggleSelection(e){e?e.forEach((e=>{this.$refs.multipleTable.toggleRowSelection(e)})):this.$refs.multipleTable.clearSelection()},handleSelectionChange(e){this.multipleSelection=e},async toRun(e){try{let{targetUrl:t,title:l,parseData:a,cid:s,status:n}=e,c=await p({targetUrl:t,title:l,parseData:a});if(200==c.code){const{title:e,content:t}=c.data;this.params.attr=this.params.attr.toString(),this.params.title=e,this.params.content=t,this.params.cid=s,this.params.status=1==n?1:0,this.create(this.params),this.$message({message:"内功获取成功^_^",type:"success"})}}catch(t){console.log(t)}},async create(){try{200==(await h({defaultParams:this.params,fieldParams:{}})).code&&this.$message({message:`第一${this.step+1}条数据完成^_^`,type:"success"})}catch(e){console.log(e)}},toEdit(e){let t=e.id;this.$router.push({name:"gather-edit",params:{id:t}})},async handleDel(e){let t=e.id;try{let e=await y(t);200===e.code?(this.$message({message:"删除成功 ^_^",type:"success"}),this.list()):this.$message({message:e.msg,type:"success"})}catch(l){console.log(l)}}}},[["render",function(e,i,r,o,u,g){const d=l,p=j("router-link"),y=a,h=s,m=n,_=c;return f(),C("div",t,[w(y,{type:"flex",class:"mt-10 mb-10",justify:"end"},{default:b((()=>[w(p,{to:"/gather/add"},{default:b((()=>[w(d,{type:"primary",round:""},{default:b((()=>[k("新增")])),_:1})])),_:1})])),_:1}),w(m,{ref:"multipleTable",data:e.tableData,"tooltip-effect":"dark","row-key":"id",onSelectionChange:g.handleSelectionChange},{default:b((()=>[w(h,{type:"selection"}),w(h,{prop:"id",width:"60",label:"编号"}),w(h,{prop:"taskName",label:"任务名称"}),w(h,{prop:"category",label:"所属栏目"}),w(h,{prop:"targetUrl",label:"接口链接"}),w(h,{prop:"status",label:"状态"},{default:b((e=>[k(S(1==e.row.status?"草稿":"发布"),1)])),_:1}),w(h,{prop:"updatedAt",label:"发布时间"}),w(h,{fixed:"right",width:"222",label:"操作"},{default:b((e=>[w(d,{icon:o.Edit,circle:"",onClick:t=>g.toEdit(e.row)},null,8,["icon","onClick"]),w(d,{icon:o.Delete,circle:"",onClick:t=>g.handleDel(e.row)},null,8,["icon","onClick"]),w(d,{type:"primary",round:"",icon:o.Cpu,onClick:t=>g.toRun(e.row)},{default:b((()=>[k("执行")])),_:2},1032,["icon","onClick"])])),_:1})])),_:1},8,["data","onSelectionChange"]),w(y,{type:"flex",class:"mt-20 align-c",justify:"center"},{default:b((()=>[w(_,{background:"",layout:"prev, pager, next",onCurrentChange:g.handleCurrentChange,"page-size":10,total:e.count,"hide-on-single-page":""},null,8,["onCurrentChange","total"])])),_:1})])}]]))}}}));