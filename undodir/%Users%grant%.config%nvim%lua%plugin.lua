Vim�UnDo� ?�w�����Z����u�e�T7R}(6M��]]   o                 B       B   B   B    a"qA   	 _�                     V       ����                                                                                                                                                                                                                                                                                                                                                             a!8}    �   U   W   n      +    require = { {'nvim-lua/plenary.nvim'} }5��    U                     m                     5�_�                    B        ����                                                                                                                                                                                                                                                                                                                            B           K          v       a!=�     �   A   C   n        -- snippet   	--  use {   --    'SirVer/ultisnips'   --  }         -- formatting     use {       'prettier/vim-prettier',       run = 'yarn install'     }    5��    A       
               -      �               5�_�                    G       ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!=�     �   G   J   e        �   G   I   d    5��    G                      �                     �    G                      �                     �    G                     �                     �    H                      �                     5�_�                    I        ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!=�     �   H   T   f       �   I   J   f    5��    H               
       �              �       5�_�                    C        ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!=�     �   B   C          
  -- theme5��    B                      .                     5�_�                    B        ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!=�     �   A   B           5��    A                      -                     5�_�                    =        ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!=�     �   <   =            -- gruvbox85��    <                      �                     5�_�      	              <        ����                                                                                                                                                                                                                                                                                                                            A           A          v       a!=�     �   <   >   n        �   <   >   m    5��    <                      �                     �    <                      �                     5�_�      
           	   A        ����                                                                                                                                                                                                                                                                                                                            B           B          v       a!>    �   A   C   o        �   A   C   n    5��    A                      -                     �    A                      -                     5�_�   	              
   c       ����                                                                                                                                                                                                                                                                                                                                                             a"e�     �   c   j   p        �   c   e   o    5��    c                      B                     �    c                      B                     �    c                     B                     �    d                     E                     �    d                    S                    �    d                    X                     �    e                    [                    �    e                    `                     �    f                     a                    �    f                    e                    �    f                    h                    �    f                    ~                     �    g                     �                     �    g                    �                    �    g   %                 �                    �    g   ,                 �                     �    h                    �                    5�_�   
                 h       ����                                                                                                                                                                                                                                                                                                                                                             a"fA     �   g   h          ,    {'do': ':GlowInstall', 'branch': 'main'}5��    g                            -               5�_�                    g        ����                                                                                                                                                                                                                                                                                                                                                             a"fD     �   g   i   u          �   g   i   t    5��    g                                           �    g                     �                     �    g   
                 �                    �    g                    �                    �    g                     �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fo     �         u      Nlocal install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'5��                         �                     �       %                 �                     �       )                 �                     �       M                 �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fq     �                Nlocal install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'5��       
                 �                     �       @                 &                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fs     �      	          P  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)5��       
                 A                    �                        U                    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             a"fu     �      
            execute 'packadd packer.nvim'5��                        �                    �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fw     �                 local packer = require('packer')5��                        �                    �       !                 �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fx     �                #local util = require('packer.util')5��       0                 P                    �       5                 U                    �       9                 Y                    �       >                 ^                    �       A                 a                    �       F                 f                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"fz     �                H  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')5��                        �                    �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a"f|     �                    'wbthomason/packer.nvim'5��                                            �                        *                    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             a"f}     �      !          --    '9mm/vim-closer'5��    $                    h                    �    $   $                 �                    5�_�                    %        ����                                                                                                                                                                                                                                                                                                                                                             a"f}     �   $   &          %--    'machakann/vim-highlightedyank'5��    )                    �                    �    )                    
                    5�_�                    *        ����                                                                                                                                                                                                                                                                                                                                                             a"f~     �   )   +          --    'machakann/vim-sandwich'5��    .                    2                    �    .   &                 R                    5�_�                    /        ����                                                                                                                                                                                                                                                                                                                                                             a"f~     �   .   0          '--    'nvim-treesitter/nvim-treesitter'5��    3                    �                    �    3                     �                    5�_�                    4        ����                                                                                                                                                                                                                                                                                                                                                             a"f~     �   3   5          !--    'tjdevries/colorbuddy.nvim'5��    9                    �                    �    9                    �                    5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   9   ;              'bkegley/gloombuddy'5��    >                                        �    >                    &                    5�_�                    ?        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   >   @              'lifepillar/vim-gruvbox8'5��    C                    F                    �    C                    _                    5�_�                    D        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   C   E              'ellisonleao/gruvbox.nvim',5��    I                    �                    �    I                    �                    5�_�                    J        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   I   K          --    'SirVer/ultisnips'5��    N                    �                    �    N                    �                    5�_�                    O        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   N   P              'prettier/vim-prettier',5��    O   
                                     �    O                                        5�_�                     P        ����                                                                                                                                                                                                                                                                                                                                                             a"f     �   O   Q              run = 'yarn install'5��    U                    D                    �    U   "                 b                    5�_�      !               V        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   U   W          $    'nvim-telescope/telescope.nvim',5��    V                    w                    �    V   (                 �                    5�_�       "           !   W        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   V   X          ,    requires = { {'nvim-lua/plenary.nvim'} }5��    [                    �                    �    [                    �                    5�_�   !   #           "   \        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   [   ]              'neovim/nvim-lspconfig'5��    `                    �                    �    `                                        5�_�   "   $           #   a        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   `   b              'kyazdani42/nvim-tree.lua',5��    a                                        �    a   ,                 <                    5�_�   #   %           $   b        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   a   c          -    requires = 'kyazdani42/nvim-web-devicons'5��    f                    e                    �    f                    {                    5�_�   $   &           %   g        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   f   h              'ellisonleao/glow.nvim', 5��    g                    �                    5�_�   %   '           &   h        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   g   i              run = "GlowInstall'5��    l                    �                    �    l                    �                    5�_�   &   (           '   m        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   l   n              'glepnir/galaxyline.nvim',5��    o                    !                    �    o   -                 /                    5�_�   '   )           (   p        ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   o   q          3    config = function() require'my_statusline' end,5��    q                    a                    �    q   -                 ~                    5�_�   (   ,           )   r        ����                                                                                                                                                                                                                                                                                                                                                             a"f�    �   q   s          ;    requires = {'kyazdani42/nvim-web-devicons', opt = true}5�5�_�   )   -   *       ,   i       ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �   i   k   u    �   i   j   u    5��    i                      �              3       5�_�   ,   .           -   j        ����                                                                                                                                                                                                                                                                                                                                                             a"g      �   i   k   v      2use {"ellisonleao/glow.nvim", run = "GlowInstall"}5��    i                      �                     5�_�   -   /           .   j       ����                                                                                                                                                                                                                                                                                                                                                             a"g     �   i   l   v      4  use {"ellisonleao/glow.nvim", run = "GlowInstall"}5��    i                    �                     �    j                     �                    5�_�   .   0           /   k       ����                                                                                                                                                                                                                                                                                                                                                             a"g     �   j   m   w      1    "ellisonleao/glow.nvim", run = "GlowInstall"}5��    j                    �                     5�_�   /   1           0   l       ����                                                                                                                                                                                                                                                                                                                                                             a"g     �   k   n   x          run = "GlowInstall"}5��    k                    �                     �    l                     �                    5�_�   0   =           1   f        ����                                                                                                                                                                                                                                                                                                                            f          i          V       a"g    �   e   f            use {       "ellisonleao/glow.nvim",        run = "GlowInstall"     }5��    e                      Y      B               5�_�   1   >   5       =   e        ����                                                                                                                                                                                                                                                                                                                            t          l          v       a"q>     �   d   e            -- markdown preview5��    d                      C                     5�_�   =   ?           >   e        ����                                                                                                                                                                                                                                                                                                                            s          k          v       a"q>     �   d   e            use {5��    d                      C                     5�_�   >   @           ?   e        ����                                                                                                                                                                                                                                                                                                                            r          j          v       a"q>     �   d   e              "ellisonleao/glow.nvim", 5��    d                      C                     5�_�   ?   A           @   e        ����                                                                                                                                                                                                                                                                                                                            q          i          v       a"q>     �   d   e              run = "GlowInstall"5��    d                      C                     5�_�   @   B           A   e        ����                                                                                                                                                                                                                                                                                                                            p          h          v       a"q?     �   d   e            }5��    d                      C                     5�_�   A               B   e        ����                                                                                                                                                                                                                                                                                                                            o          g          v       a"q@   	 �   d   e           5��    d                      C                     5�_�   1   6   4   =   5   e        ����                                                                                                                                                                                                                                                                                                                                                             a"h     �   d   f        5��    d                      C                     5�_�   5   7           6   e        ����                                                                                                                                                                                                                                                                                                                                                             a"h     �   d   f        5��    d                      C                     5�_�   6   8           7   e        ����                                                                                                                                                                                                                                                                                                                                                             a"h     �   d   f        5��    d                      C                     5�_�   7   9           8   e        ����                                                                                                                                                                                                                                                                                                                                                             a"h     �   d   f        5��    d                      C                     5�_�   8   :           9   e        ����                                                                                                                                                                                                                                                                                                                                                             a"h    �   d   f        5��    d                      C                     5�_�   9   <           :   d        ����                                                                                                                                                                                                                                                                                                                                                             a"jg    �   c   e        5��    c                      B                     5�_�   :       ;       <   g       ����                                                                                                                                                                                                                                                                                                                            n          f          v       a"q*     �   f   h   o          "hoob3rt/lualine.nvimvim",5��    f                    e                    �    f                    f                    �    f                    g                    �    f                    h                    �    f   	                 i                    �    f   
                 j                    �    f                    k                    �    f                    l                    �    f                    m                    �    f                    n                    �    f                    o                    �    f                    p                    �    f                    q                    �    f                    r                    �    f                    s                    �    f                    t                    �    f                    u                    �    f                    v                    �    f                    w                    �    f                    x                    �    f                    y                    �    f                    y                    5�_�   :           <   ;   f       ����                                                                                                                                                                                                                                                                                                                            f          f          v       a"q      �   e   o   o        5��    e                    Z      �               5�_�   1       2   5   4           ����                                                                                                                                                                                                                                                                                                                                                             a"g4     �         u    �          u        use {       "ellisonleao/glow.nvim",        run = "GlowInstall"     }5��                                           B       5�_�   1   3       4   2   l       ����                                                                                                                                                                                                                                                                                                                            f          f          V       a"g     �   l   m   u    �   k   l   u        use {       "ellisonleao/glow.nvim",        run = "GlowInstall"     }5��    k                      �              B       5�_�   2               3   l       ����                                                                                                                                                                                                                                                                                                                            f          f          V       a"g     �   l   m   y    �   k   l   y        use {       "ellisonleao/glow.nvim",        run = "GlowInstall"     }5��    k                      �              B       5�_�   )   +       ,   *           ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �         u    �          u      ;    requires = {"kyazdani42/nvim-web-devicons", opt = true}     }5��                                           @       5�_�   *               +          ����                                                                                                                                                                                                                                                                                                                                                             a"f�     �          w      <    rcequires = {"kyazdani42/nvim-web-devicons", opt = true}5��                                                5��