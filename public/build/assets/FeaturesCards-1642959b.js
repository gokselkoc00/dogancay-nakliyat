import{b as d,o,c as e,d as t,F as n,k as _,t as c}from"./app-349b4edc.js";import{_ as l}from"./_plugin-vue_export-helper-c27b6911.js";const i={data(){return{data:{}}},mounted(){this.getData()},methods:{async getData(){try{d.get(route("features-card.data")).then(a=>{this.data=a.data}).catch(a=>{console.error(a)})}catch(a){console.error(a)}}}},h={class:"services mt-5"},u={class:"container"},g={class:"row"},p={class:"col-lg-12"},f={class:"row"},v={class:"icon-box"},x={class:""},m=["src"],y={class:"title text-center mt-4"},b={target:"_blank"},k={class:"description"};function F(a,B,D,$,r,w){return o(),e("section",h,[t("div",u,[t("div",g,[t("div",p,[t("div",f,[(o(!0),e(n,null,_(r.data,s=>(o(),e("div",{class:"col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0","data-aos":"flip-left","data-aos-duration":"3000",key:s.id},[t("div",v,[t("div",x,[t("img",{class:"img-fluid custom-img",src:s==null?void 0:s.img_url,alt:"img"},null,8,m)]),t("h4",y,[t("a",b,c(s==null?void 0:s.title),1)]),t("p",k,c(s==null?void 0:s.text),1)])]))),128))])])])])])}const I=l(i,[["render",F],["__scopeId","data-v-86631540"]]);export{I as default};
