import React from "react";

function Navbar() {
  return (
    <nav className="rounded-xl w-[250px] min-h-[880px] bg-indigo-600 text-white sticky top-0 p-4 m-4">
      {/* TEXTO CAMBIADO PARA DEMOSTRAR EL PIPELINE */}
      <h2 className="text-xl font-bold mb-8">MENU PRINCIPAL 🚀</h2>

      {/* Menú de navegación */}
      <ul className="space-y-3">
        <li>
          <a
            href="#"
            className="block font-bold py-2 px-3 hover:bg-indigo-700 rounded"
          >
            Usuarios
          </a>
        </li>
        <li>
          <a
            href="#"
            className="block font-bold py-2 px-3 hover:bg-indigo-700 rounded"
          >
            Productos
          </a>
        </li>
        <li>
          <a
            href="#"
            className="block font-bold py-2 px-3 hover:bg-indigo-700 rounded"
          >
            Configuración
          </a>
        </li>
      </ul>
    </nav>
  );
}

export default Navbar;