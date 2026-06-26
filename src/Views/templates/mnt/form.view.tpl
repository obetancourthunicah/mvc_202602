<section class="depth-4">
    <h2>{{modeDsc}}</h2>
</section> 
<section>
    <form 
        action="index.php?page=Mnt-Resultform"
        method="POST">


        <button type="button" id="returnBtn">Cancelar</button>
    </form>
</section>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("returnBtn").addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=Mnt-ResultList");
        });
    });
</script>