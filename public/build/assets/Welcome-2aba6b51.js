import{b as p,o as r,c as s,d as l,F as c,k as i,l as o,a as u,w as _,t as m,E as h}from"./app-3104e780.js";import{_ as v}from"./_plugin-vue_export-helper-c27b6911.js";const g={data(){return{data:[],currentSlide:0,intervalId:null}},async mounted(){try{const e=await this.getData();this.data=e.data}catch(e){console.error(e)}},methods:{async getData(){try{return(await p.get(route("welcome.data"))).data}catch(e){throw e}},changeSlide(e){this.currentSlide=e},addLineBreaks(e){return e=e.replace(/\./g,".<br>"),e=e.replace(/,/g,",<br>"),e},startAutoplay(){this.intervalId=setInterval(this.nextSlide,3e3)},stopAutoplay(){clearInterval(this.intervalId)},nextSlide(){this.currentSlide=(this.currentSlide+1)%this.data.length}},beforeMount(){this.startAutoplay()},beforeUnmount(){this.stopAutoplay()}},y={class:"c-section c-home"},S={class:"c-image-container"},k=["src"],f=["innerHTML"],b={class:"c-slider-navigation"},w=["onClick"];function I(e,B,L,A,a,d){return r(),s("div",null,[l("section",y,[l("div",S,[(r(!0),s(c,null,i(a.data,(n,t)=>(r(),s("img",{class:o(["c-img-slider",{active:t===a.currentSlide}]),src:e.$page.props.site_url+n.img_url,alt:"image",key:t},null,10,k))),128))]),(r(!0),s(c,null,i(a.data,(n,t)=>(r(),s("div",{class:o(["c-content",{active:t===a.currentSlide}]),key:t},[u(h,{name:"slide-title"},{default:_(()=>[(r(),s("h1",{key:a.currentSlide},m(n.title),1))]),_:2},1024),u(h,{name:"slide-title"},{default:_(()=>[(r(),s("p",{key:a.currentSlide,innerHTML:d.addLineBreaks(n.text)},null,8,f))]),_:2},1024)],2))),128)),l("div",b,[(r(!0),s(c,null,i(a.data,(n,t)=>(r(),s("div",{key:t,class:o(["c-nav-btn",{active:t===a.currentSlide}]),onClick:C=>d.changeSlide(t)},null,10,w))),128))])])])}const T=v(g,[["render",I],["__scopeId","data-v-4b93d76c"]]);export{T as default};