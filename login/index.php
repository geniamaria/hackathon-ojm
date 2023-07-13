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
        <form method="POST" action="" class="flex flex-col gap-4 mb-10">
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Email ou Numero de Celular</label>
                <input 
                    type="text" 
                    name="userid" 
                    requred
                    class="w-full h-[46px] bg-zinc-100 rounded-[10px]"
                >
            </div>
            <div class="ml-4 flex flex-col gap-[2px] w-[90%] mx-auto">
                <label class="text-green-950 text-[15px] font-semibold">Senha</label>
                <input 
                    type="password" 
                    name="password" 
                    requred
                    class="w-full h-[46px] bg-zinc-100 rounded-[10px]"
                >
            </div>
            <p class="text-xs font-normal ml-4 text-green-950">
                Nao tem uma conta? 
                <span class="text-black font-semibold"><a href="../signup/"></a></span> 
                para se cadastrar.
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