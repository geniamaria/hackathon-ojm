<?php
require "../server/config/connect.php";
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedPlus</title>
    <link rel="stylesheet" href="../assets/css/global.css">
    <script src="https://kit.fontawesome.com/4b43862993.js" crossorigin="anonymous"></script>
</head>

<body>
    <header>
        <!-- Adicionado usando AJAX  -->
    </header>
    <main>
        <h1 class="text-green-950 text-2xl font-bold text-center mt-10 mb-5">Entrar</h1>
        <?php
        if (isset($_SESSION["import-status"])) {

            if ($_SESSION["successful-status"] == "ok") {
                echo "<div class='bg-green-500 text-white font-semibold flex justify-center my-6 px-2 py-4'>";
                echo $_SESSION["import-status"];
                unset($_SESSION["import-status"]);
                echo "</div>";
            }
            if ($_SESSION["successful-status"] == "error") {
                echo "<div class='bg-red-500 text-white font-semibold flex justify-center my-6 px-2 py-4'>";
                echo $_SESSION["import-status"];
                unset($_SESSION["import-status"]);
                echo "</div>";
            }
            if ($_SESSION["successful-status"] == "not ok") {
                echo "<div class='bg-yellow-500 text-white font-semibold flex justify-center my-6 px-2 py-4'>";
                echo $_SESSION["import-status"];
                unset($_SESSION["import-status"]);
                echo "</div>";
            }
        }
        ?>

        <form method="POST" action="../server/config/connect.php" class="flex flex-col gap-4 mb-10">
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Nome</label>
                <input type="text" name="name" requred class="w-full h-[46px] bg-zinc-100 rounded-[10px] border border-green-900 px-1 outline-none focus:outline-none focus:border-2">
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Numero de Celular</label>
                <div class="flex flex-row gap 1">
                    <input type="text" required disabled class="w-[59px] h-[46px] opacity-60 bg-zinc-100 px-1 rounded-[10px]" value="+258">
                    <input type="number" min="1" name="cell" requred class="w-[90%] h-[46px] bg-zinc-100 rounded-[10px] border border-green-900 px-1 outline-none focus:outline-none focus:border-2">
                </div>
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Email</label>
                <input type="text" name="email" requred class="w-full h-[46px] bg-zinc-100 rounded-[10px] border border-green-900 px-1 outline-none focus:outline-none focus:border-2">
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Endereco</label>
                <textarea required name="address" class="w-full h-[347px] bg-zinc-100 rounded-[10px] border border-green-900 px-1 outline-none focus:outline-none focus:border-2"></textarea>
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Senha</label>
                <input type="password" name="password" requred class="w-full h-[46px] bg-zinc-100 rounded-[10px]">
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Confirmar Senha</label>
                <input type="password" name="confirm-password" requred class="w-full h-[46px] bg-zinc-100 rounded-[10px]">
            </div>
            <p class="text-xs font-normal ml-4 text-green-950">
                Ja tem uma conta?
                <span class="text-black font-semibold"><a href="../login/">Clique aqui</a></span>
                para se entrar.
            </p>
            <button type="submit" class="w-[345px] mx-auto text-white font-semibold mt-5 h-[46px] bg-green-950 rounded-[10px] text-center">Entrar</button>
        </form>
    </main>
    <footer>
        <!-- Adicionado usando AJAX  -->
    </footer>

    <script src="../assets/js/jquery-3.7.0.js"></script>
    <script src="../assets/js/pages.js"></script>
</body>

</html>