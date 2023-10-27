import{b as E,T as O,o as c,c as d,d as t,t as a,f as q,g as i,v as m,h as _,F as z,p as A,e as H}from"./app-3104e780.js";import{_ as J}from"./_plugin-vue_export-helper-c27b6911.js";const K={props:{errors:Object},data(){return{data:{}}},mounted(){this.getData()},methods:{async getData(){try{E.get(route("contact.data")).then(s=>{this.data=s.data}).catch(s=>{console.error(s)})}catch(s){console.error(s)}},createContactForm(){this.contactForm.post(route("contact.store"),{onSuccess:()=>{this.clearForm(),this.contactForm.reset()}})},clearForm(){this.contactForm.name=null,this.contactForm.last_name=null,this.contactForm.email=null,this.contactForm.phone=null,this.contactForm.message=null}},setup(){return{contactForm:O({name:null,last_name:null,email:null,phone:null,message:null})}}},h=s=>(A("data-v-34bb56a6"),s=s(),H(),s),L=h(()=>t("div",{class:"hr",style:{"border-bottom":"3px solid #ccc"}},null,-1)),P={class:"",id:"contact-us"},Q={class:"container"},R={class:"row"},W={class:"col-lg-12","data-aos":"fade-up","data-aos-duration":"3000"},X={class:"center-heading"},Y={class:"c-h2-title mt-5"},Z={class:"offset-lg-3 col-lg-6","data-aos":"fade-down","data-aos-duration":"3000"},$={class:"text-center mt-4"},tt={class:"row mt-5"},at={class:"col-lg-4 col-md-6 col-sm-12","data-aos":"fade-right","data-aos-duration":"3000"},et={class:"contact-info mt-3"},ot={class:"mt-5"},st=h(()=>t("i",{class:"ri-map-pin-line"},null,-1)),lt=h(()=>t("i",{class:"ri-phone-line"},null,-1)),nt=h(()=>t("i",{class:"ri-printer-line"},null,-1)),rt=h(()=>t("i",{class:"ri-mail-send-line"},null,-1)),ct={class:"col-lg-8 col-md-6 col-sm-12","data-aos":"fade-left","data-aos-duration":"3000"},dt={class:"col-md-6"},it={for:"name",class:"form-label"},mt={key:0,class:"alert alert-danger mt-2",role:"alert"},_t={class:"col-md-6"},ht={for:"last_name",class:"form-label"},ut={key:0,class:"alert alert-danger mt-2",role:"alert"},ft={class:"col-md-6 mt-3"},vt={for:"email",class:"form-label"},gt={key:0,class:"alert alert-danger mt-2",role:"alert"},pt={class:"col-md-6 mt-3"},bt={for:"phone",class:"form-label"},Ft={key:0,class:"alert alert-danger mt-2",role:"alert"},yt={class:"col-md-12 mt-3"},xt={for:"message",class:"form-label"},kt={key:0,class:"alert alert-danger mt-2",role:"alert"},wt={class:"col-lg-12"},Vt={class:"text-center mt-4"},Ct={type:"submit",id:"form-submit",class:"main-button"};function St(s,e,n,r,o,u){var f,v,g,p,b,F,y,x,k,w,V,C,S,G,U,D,I,B,M,N,T,j;return c(),d(z,null,[L,t("section",P,[t("div",Q,[t("div",R,[t("div",W,[t("div",X,[t("h2",Y,a((f=o.data.data)==null?void 0:f.form_title),1)])]),t("div",Z,[t("div",$,[t("p",null,a((v=o.data.dataGeneral)==null?void 0:v.telefon),1)])])]),t("div",tt,[t("div",at,[t("div",et,[t("div",null,[t("ul",ot,[t("div",null,[st,t("p",null,a((g=o.data.dataGeneral)==null?void 0:g.adres),1)]),t("div",null,[lt,t("p",null,a((p=o.data.dataGeneral)==null?void 0:p.telefon),1)]),t("div",null,[nt,t("p",null,a((b=o.data.dataGeneral)==null?void 0:b.faks),1)]),t("div",null,[rt,t("p",null,a((F=o.data.dataGeneral)==null?void 0:F.email),1)])])])])]),t("div",ct,[t("form",{class:"row g-3",onSubmit:e[5]||(e[5]=q((...l)=>u.createContactForm&&u.createContactForm(...l),["prevent"]))},[t("div",dt,[t("label",it,a((x=(y=o.data.data)==null?void 0:y.place_holder)==null?void 0:x.name),1),i(t("input",{"onUpdate:modelValue":e[0]||(e[0]=l=>r.contactForm.name=l),class:"form-control",id:"name"},null,512),[[m,r.contactForm.name]]),(k=n.errors)!=null&&k.name?(c(),d("div",mt,a(n.errors.name),1)):_("",!0)]),t("div",_t,[t("label",ht,a((V=(w=o.data.data)==null?void 0:w.place_holder)==null?void 0:V.last_name),1),i(t("input",{"onUpdate:modelValue":e[1]||(e[1]=l=>r.contactForm.last_name=l),class:"form-control",id:"last_name"},null,512),[[m,r.contactForm.last_name]]),(C=n.errors)!=null&&C.last_name?(c(),d("div",ut,a(n.errors.last_name),1)):_("",!0)]),t("div",ft,[t("label",vt,a((G=(S=o.data.data)==null?void 0:S.place_holder)==null?void 0:G.email),1),i(t("input",{"onUpdate:modelValue":e[2]||(e[2]=l=>r.contactForm.email=l),class:"form-control",id:"email"},null,512),[[m,r.contactForm.email]]),(U=n.errors)!=null&&U.email?(c(),d("div",gt,a(n.errors.email),1)):_("",!0)]),t("div",pt,[t("label",bt,a((I=(D=o.data.data)==null?void 0:D.place_holder)==null?void 0:I.phone),1),i(t("input",{"onUpdate:modelValue":e[3]||(e[3]=l=>r.contactForm.phone=l),class:"form-control",id:"phone"},null,512),[[m,r.contactForm.phone]]),(B=n.errors)!=null&&B.phone?(c(),d("div",Ft,a(n.errors.phone),1)):_("",!0)]),t("div",yt,[t("label",xt,a((N=(M=o.data.data)==null?void 0:M.place_holder)==null?void 0:N.message),1),i(t("textarea",{"onUpdate:modelValue":e[4]||(e[4]=l=>r.contactForm.message=l),class:"form-control",id:"message",rows:"4"},null,512),[[m,r.contactForm.message]]),(T=n.errors)!=null&&T.message?(c(),d("div",kt,a(n.errors.message),1)):_("",!0)]),t("div",wt,[t("fieldset",Vt,[t("button",Ct,a((j=o.data.data)==null?void 0:j.btn_text),1)])])],32)])])])])],64)}const Dt=J(K,[["render",St],["__scopeId","data-v-34bb56a6"]]);export{Dt as default};
