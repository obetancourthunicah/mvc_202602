<section class="depth-1 px-4 mb-4">
    <h2>{{modeDsc}}</h2>
</section > 
<section class="row my-4">
    <form 
        class="col-12 col-m-6 offset-m-3 depth-1 px-4 py-4"
        action="index.php?page=Mnt-Resultform"
        method="POST" >
        <div class="row py-2 align-center">
            <label class="col-12 col-m-2 px-1">Equipo:</label>
            <input type="text" name="equipo_a" required class="col-12 col-m-6">
            <label class="col-12 col-m-2 px-4">Score:</label>
            <input type="number" name="score_a" required class="col-12 col-m-2">
        </div>
        <div class="row py-2 align-center">
            <label class="col-12 col-m-2 px-1">Equipo:</label>
            <input type="text" name="equipo_b" required class="col-12 col-m-6">
            <label class="col-12 col-m-2 px-4">Score:</label>
            <input type="number" name="score_b" required class="col-12 col-m-2">
        </div>
        <div class="row py-2 align-center">
            <label class="col-12 col-m-2 px-1">Resumen:</label>
            <input type="text" name="resumen" required class="col-12 col-m-12">
        </div>
        <div class="row py-2 align-center my-2 flex-end">
            <input type="hidden" name="id" value="{{id}}">
            <input type="hidden" name="mode" value="{{mode}}">
            <button type="submit" name="btnGuardar">Guardar</button>
            <button type="button" id="returnBtn" class="mx-4">Cancelar</button>
        </div>
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