import{q as e,r as a,G as s,Q as t,f as o,p as r,K as m}from"./element-plus.js";import{c as l}from"./frag.js";import{_ as p,t as i}from"./tinymce.js";import{p as n}from"./pinyin-pro.js";import{u}from"./upload.js";import{_ as d}from"./index.js";import{ad as c,o as j,c as f,_ as g,R as y,Q as h,a as _,M as b,U as V,W as v}from"./@vue.js";import"./lodash-es.js";import"./async-validator.js";import"./@vueuse.js";import"./dayjs.js";import"./@element-plus.js";import"./@ctrl.js";import"./@popperjs.js";import"./memoize-one.js";import"./normalize-wheel-es.js";import"./sys_config.js";import"./pinia.js";import"./pinia-plugin-persist.js";import"./vanilla-jsoneditor.js";import"./json-source-map.js";import"./@fortawesome.js";import"./natural-compare-lite.js";import"./@codemirror.js";import"./@lezer.js";import"./crelt.js";import"./style-mod.js";import"./w3c-keyname.js";import"./@replit.js";import"./codemirror-wrapped-line-indent.js";import"./fast-deep-equal.js";import"./fast-uri.js";import"./jmespath.js";import"./immutable-json-patch.js";import"./vue-router.js";import"./axios.js";import"./js-cookie.js";/* empty css        */const k={class:"mr-10 ml-10 mb-20 pd-10 bg-fff"};const x=d({name:"frag-add",components:{Vue3Tinymce:p},data:()=>({setting:i,loading:!0,params:{type:"1",name:"",mark:"",content:"欢迎使用ChanCMS系统"},paramsRules:{name:[{required:!0,message:"请输入栏目名称",trigger:"blur"},{min:2,max:50,message:"名称长度在 2 到 50 个字符之间",trigger:"blur"}]}}),computed:{},async mounted(){this.setting.images_upload_url=await u()},created(){},unmounted(){},watch:{"params.name":function(e,a){this.params.mark=n(e,{toneType:"none"}).replace(/\s+/g,"")}},methods:{tinymce(){this.loading=!1},setContent(e){this.params.content=e},handleAttr(e){console.log("e--\x3e",e)},handleSubCid(e){console.log("e--\x3e",e)},async create(){try{let e=await l(this.params);200==e.code?(this.$message({message:"新增成功^_^",type:"success"}),this.$router.go(-1)):this.$message({message:e.msg,type:"success"})}catch(e){console.log(e)}},submit(e){this.$refs[e].validate((e=>{if(!e)return console.log("error submit!!"),!1;this.create()}))}}},[["render",function(l,p,i,n,u,d){const x=e,w=a,U=s,C=t,$=c("vue3-tinymce"),q=o,z=r,I=m;return j(),f("div",k,[g((j(),y(z,{ref:"params",model:l.params,rules:l.paramsRules,"label-width":"84px",class:"mt-20"},{default:h((()=>[_("div",null,[b(w,{label:"碎片名称",prop:"name"},{default:h((()=>[b(x,{modelValue:l.params.name,"onUpdate:modelValue":p[0]||(p[0]=e=>l.params.name=e),placeholder:"请输入汉字"},null,8,["modelValue"])])),_:1}),b(w,{label:"碎片标识",prop:"mark"},{default:h((()=>[b(x,{modelValue:l.params.mark,"onUpdate:modelValue":p[1]||(p[1]=e=>l.params.mark=e),placeholder:"模板使用标识"},null,8,["modelValue"])])),_:1}),b(w,{label:"碎片类型",prop:"type"},{default:h((()=>[b(C,{modelValue:l.params.type,"onUpdate:modelValue":p[2]||(p[2]=e=>l.params.type=e),class:"ml-4"},{default:h((()=>[b(U,{value:"1"},{default:h((()=>[V("富文本")])),_:1}),b(U,{value:"2"},{default:h((()=>[V("文本框")])),_:1})])),_:1},8,["modelValue"])])),_:1}),"1"==l.params.type?(j(),y(w,{key:0,label:"碎片内容"},{default:h((()=>[b($,{modelValue:l.params.content,"onUpdate:modelValue":p[3]||(p[3]=e=>l.params.content=e),setting:l.setting,onInit:d.tinymce,"script-src":"/public/admin/tinymce/tinymce.min.js"},null,8,["modelValue","setting","onInit"])])),_:1})):v("",!0),"2"==l.params.type?(j(),y(w,{key:1,label:"碎片内容"},{default:h((()=>[b(x,{type:"textarea",prop:"textarea",class:"textarea",rows:3,modelValue:l.params.content,"onUpdate:modelValue":p[4]||(p[4]=e=>l.params.content=e)},null,8,["modelValue"])])),_:1})):v("",!0)]),b(w,null,{default:h((()=>[b(q,{type:"primary",onClick:p[5]||(p[5]=e=>d.submit("params"))},{default:h((()=>[V("保存")])),_:1})])),_:1})])),_:1},8,["model","rules"])),[[I,l.loading]])])}],["__scopeId","data-v-ae4000e3"]]);export{x as default};