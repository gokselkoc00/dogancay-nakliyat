import{b as p,r as _,o,c as e,a as h,w as f,F as u,d as t,t as n,h as v,k as y,p as x,e as k}from"./app-848dc0ed.js";import w from"./Layout-99f9fe0c.js";import{_ as L}from"./_plugin-vue_export-helper-c27b6911.js";import"./Header-f4e83e0d.js";import"./Footer-bccf3d6a.js";import"./Preloader-d72c80fb.js";const H={data(){return{data:{},contentList:[],hero:""}},components:{Layout:w},mounted(){this.getData()},methods:{async getData(){try{p.get(route("planlama-hazirlik.data")).then(a=>{this.data=a.data,this.hero=a.data.hero,this.contentList=a.data.data}).catch(a=>{console.error(a)})}catch(a){console.error(a)}}}},b=a=>(x("data-v-555060a4"),a=a(),k(),a),z={class:"row"},I=["src"],S={class:"container"},V={class:"row mt-5"},j={class:"col-md-12",style:{display:"flex","align-items":"center","justify-content":"center"}},B={class:""},C={key:0,class:"c-h2-title","data-aos":"fade-right","data-aos-duration":"3000"},D=b(()=>t("div",{class:"custom-carousel-caption d-none d-md-block mt-5"},null,-1)),N={class:"container"},P={key:0,class:"row"},F={class:"col-lg-6 align-items-stretch order-2 order-lg-1 img aos-init aos-animate mt-5 mb-5"},E=["src"],q={class:"col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-1 order-lg-2"},A={class:"content"},G={"data-aos":"fade-left","data-aos-duration":"3000"},J={key:1,class:"row"},K={class:"col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-2 order-lg-1"},M={class:"content"},O={"data-aos":"fade-left","data-aos-duration":"3000"},Q={class:"col-lg-6 align-items-stretch order-1 order-lg-2 img aos-init aos-animate mt-5 mb-5"},R=["src"];function T(a,U,W,X,c,Y){const m=_("Head"),g=_("Layout");return o(),e(u,null,[h(m,{title:"Planlama Ve Hazirlik"}),h(g,null,{default:f(()=>{var d,i,l;return[t("div",z,[t("img",{style:{"max-height":"400px",width:"100%"},src:c.hero,class:"img-fluid"},null,8,I)]),t("div",S,[t("div",V,[t("div",j,[t("div",B,[(d=c.data.data)!=null&&d.title?(o(),e("h2",C,n((i=c.data.data)==null?void 0:i.title),1)):v("",!0)])])]),D,t("div",N,[(o(!0),e(u,null,y((l=c.contentList)==null?void 0:l.data,(s,r)=>(o(),e("div",{key:r},[r%2===0?(o(),e("div",P,[t("div",F,[t("img",{class:"cst-content-img img-fluid",src:s==null?void 0:s.img_url,alt:"","data-aos":"fade-right","data-aos-duration":"3000"},null,8,E)]),t("div",q,[t("div",A,[t("p",G,n(s==null?void 0:s.text),1)])])])):(o(),e("div",J,[t("div",K,[t("div",M,[t("p",O,n(s==null?void 0:s.text),1)])]),t("div",Q,[t("img",{class:"cst-content-img img-fluid",src:s==null?void 0:s.img_url,alt:"","data-aos":"fade-right","data-aos-duration":"3000"},null,8,R)])]))]))),128))])])]}),_:1})],64)}const et=L(H,[["render",T],["__scopeId","data-v-555060a4"]]);export{et as default};