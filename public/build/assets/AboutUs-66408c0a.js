import{b as g,r,o as _,c as m,a,w as h,F as x,d as t,E as y,t as o,h as v,p as b,e as w}from"./app-1fff20f6.js";import k from"./Layout-c730be2b.js";import{_ as j}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-d752c50f.js";import"./Footer-5082137e.js";import"./Preloader-34304c50.js";const I={data(){return{data:{},image:"",hero:"",permission_licence:""}},components:{Layout:k},mounted(){this.getData()},methods:{async getData(){try{g.get(route("aboutus-inner.data")).then(s=>{this.data=s.data.data,this.image=s.data.image,this.hero=s.data.hero,this.permission_licence=s.data.permission_licence}).catch(s=>{console.error(s)})}catch(s){console.error(s)}}}},u=s=>(b("data-v-09aa9977"),s=s(),w(),s),S={class:"row"},B=["src"],C={class:"container"},D={class:"row mt-5"},H={class:"col-md-12",style:{display:"flex","align-items":"center","justify-content":"center"}},L={class:""},N={key:0,class:"header-title"},V=u(()=>t("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),A={class:"col-md-12 row",style:{"padding-top":"80px","padding-bottom":"70px","text-align":"center"}},E={class:"row"},F={class:"col-md-12 d-flex justify-content-center","data-aos":"fade-down","data-aos-duration":"3000"},U={class:"c-h2-title"},z={class:"col-md-12 col-lg-6",style:{display:"flex","justify-content":"center","align-items":"center"},"data-aos":"fade-right","data-aos-duration":"3000"},T=["src"],q={class:"col-md-12 col-lg-6 text-content",style:{"padding-right":"0px"},"data-aos":"fade-left","data-aos-duration":"3000"},G={class:"mt-4"},J={style:{"text-align":"left"}},K={class:"col-md-12 mt-5"},M=u(()=>t("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),O={class:"col-12 mt-5"},P={class:"c-h2-title","data-aos":"fade-up","data-aos-duration":"3000"},Q={class:"col-md-12 d-flex align-items-center justify-content-center mt-5","data-aos":"fade-down","data-aos-duration":"3000"},R={class:"icon-box referances-item",style:{width:"100%",border:"unset"}},W=["href"],X=["src"];function Y(s,Z,$,tt,e,st){const p=r("Head"),f=r("Layout");return _(),m(x,null,[a(p,{title:"Hakkımızda"}),a(f,null,{default:h(()=>{var i,c,d;return[t("div",S,[t("img",{style:{"max-height":"400px",width:"100%"},src:e.hero,class:"img-fluid"},null,8,B)]),t("div",C,[t("div",D,[t("div",H,[t("div",L,[a(y,{name:"slide-title"},{default:h(()=>{var n,l;return[(n=e.data)!=null&&n.head_title?(_(),m("h1",N,o((l=e.data)==null?void 0:l.head_title),1)):v("",!0)]}),_:1})])])]),V,t("div",A,[t("div",E,[t("div",F,[t("h2",U,o((i=e.data)==null?void 0:i.title),1)]),t("div",z,[t("img",{class:"img-fluid w-100",style:{"border-radius":"3px"},src:e.image},null,8,T)]),t("div",q,[t("div",G,[t("p",J,o((c=e.data)==null?void 0:c.text),1)])]),t("div",K,[M,t("div",O,[t("h2",P,o((d=e.data)==null?void 0:d.licence_title),1)]),t("div",Q,[t("div",R,[t("div",null,[t("a",{target:"_blank",href:e.permission_licence},[t("img",{class:"img-fluid",style:{"border-radius":"3px","max-height":"500px"},src:e.permission_licence},null,8,X)],8,W)])])])])])])])]}),_:1})],64)}const nt=j(I,[["render",Y],["__scopeId","data-v-09aa9977"]]);export{nt as default};