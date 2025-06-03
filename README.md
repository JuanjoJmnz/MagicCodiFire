# 🇪🇸 Versión en Español

<h1>🔐 Script de Encriptación/Desencriptación AES-256</h1>

<p>
Un script en <strong>Bash</strong> que permite encriptar y desencriptar texto introducido por el usuario usando <strong>cifrado AES-256</strong> a través de OpenSSL. El script incluye una barra de progreso animada y mensajes interactivos para una mejor experiencia de usuario.
</p>

<hr>

<h2>🧰 Características</h2>
<ul>
  <li>Cifrado AES-256 con <code>openssl</code> y generación de clave aleatoria.</li>
  <li>Desencriptado seguro utilizando la clave previamente generada.</li>
  <li>Simulación de barra de progreso para visualización.</li>
  <li>Opción para eliminar de forma segura la clave y el archivo cifrado tras la desencriptación.</li>
  <li>Interfaz amigable desde la línea de comandos.</li>
</ul>

<hr>

<h2>🚀 Cómo usarlo</h2>

<h3>🔒 Modo Encriptación</h3>
<pre><code>./script.sh --encriptador</code></pre>

<b>o</b>

<pre><code>./script.sh -e</code></pre>

<p><strong>Pasos:</strong></p>
<ol>
  <li>Introduce el texto que deseas encriptar.</li>
  <li>El script genera una clave segura (<code>Clave.txt</code>).</li>
  <li>El texto se guarda, se cifra con AES-256 y el archivo original se elimina.</li>
  <li>El resultado se guarda como <code>Encriptado.3nc</code>.</li>
</ol>

<h3>🔓 Modo Desencriptación</h3>
<pre><code>./script.sh --desencriptador</code></pre>

<b>o</b>
  
<pre><code>./script.sh -d</code></pre>

<p><strong>Pasos:</strong></p>
<ol>
  <li>Busca archivos <code>.3nc</code> y el archivo <code>Clave.txt</code>.</li>
  <li>Desencripta el archivo y lo guarda como <code>Desencriptado.d3nc</code>.</li>
  <li>Pregunta si deseas borrar los archivos generados por seguridad.</li>
</ol>

<hr>

<h2>⚠️ Notas</h2>
<ul>
  <li><strong>¡Guarda <code>Clave.txt</code> con cuidado!</strong> Sin ella no es posible desencriptar el archivo.</li>
  <li>El script trabaja con archivos en el directorio actual.</li>
  <li>Uso recomendado solo con fines locales y educativos. No utilizar en producción con datos sensibles.</li>
</ul>

<hr>

<h2>📦 Requisitos</h2>
<ul>
  <li>Bash</li>
  <li><code>openssl</code> instalado en el sistema</li>
</ul>

<hr>

<h2>👤 Autor</h2>
<p><strong>Juan José Jiménez Gil</strong><br>
Desarrollado como herramienta de aprendizaje para practicar scripting en Bash y conceptos básicos de criptografía.</p>

<br><br>
<hr><hr>
<br><br>

# 🇬🇧 English Version

<h1>🔐 AES-256 Encryption/Decryption Script</h1>

<p>
A <strong>Bash</strong> script that allows you to encrypt and decrypt user-provided text using <strong>AES-256 encryption</strong> via OpenSSL. The script includes a progress bar animation and interactive CLI messages for an enhanced user experience.
</p>

<hr>

<h2>🧰 Features</h2>
<ul>
  <li>AES-256 encryption using <code>openssl</code> and random key generation.</li>
  <li>Secure decryption using the previously generated key.</li>
  <li>Progress bar simulation for better user feedback.</li>
  <li>Option to safely delete the key and encrypted file after decryption.</li>
  <li>User-friendly command line interface with prompts.</li>
</ul>

<hr>

<h2>🚀 How to Use</h2>

<h3>🔒 Encryption Mode</h3>
<pre><code>./script.sh --encriptador</code></pre>

<b>or</b>

<pre><code>./script.sh -e</code></pre>

<p><strong>Steps:</strong></p>
<ol>
  <li>Enter the text you wish to encrypt.</li>
  <li>The script generates a secure key (<code>Clave.txt</code>).</li>
  <li>The text is saved, encrypted using AES-256, and the original file is deleted.</li>
  <li>The result is saved as <code>Encriptado.3nc</code>.</li>
</ol>

<h3>🔓 Decryption Mode</h3>
<pre><code>./script.sh --desencriptador</code></pre>

<b>or</b>
  
<pre><code>./script.sh -d</code></pre>

<p><strong>Steps:</strong></p>
<ol>
  <li>Looks for <code>.3nc</code> files and the <code>Clave.txt</code> key file.</li>
  <li>Decrypts the file and saves the result as <code>Desencriptado.d3nc</code>.</li>
  <li>Asks if you want to delete the key and encrypted file for security purposes.</li>
</ol>

<hr>

<h2>⚠️ Notes</h2>
<ul>
  <li><strong>Keep <code>Clave.txt</code> safe!</strong> Without it, decryption is impossible.</li>
  <li>The script works within the current directory.</li>
  <li>Recommended for local and educational use only. Not intended for production with sensitive data.</li>
</ul>

<hr>

<h2>📦 Requirements</h2>
<ul>
  <li>Bash</li>
  <li><code>openssl</code> installed on your system</li>
</ul>

<hr>

<h2>👤 Author</h2>
<p><strong>Juan José Jiménez Gil</strong><br>
Created as a learning tool to practice Bash scripting and basic cryptography concepts.</p>

