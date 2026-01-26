# 3ds Max Scripts Collection

A comprehensive collection of productivity-enhancing MaxScript tools for Autodesk 3ds Max. These scripts are designed to streamline common workflows and improve efficiency for 3D artists working on architectural visualization, game development, and animation projects....

---

## 📋 Table of Contents

- [Overview](#overview)
- [Scripts](#scripts)
- [Installation](#installation)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

---

## 🎯 Overview

This repository contains **Custom MaxScript tools** developed to automate repetitive tasks and enhance productivity in 3ds Max. Each script addresses specific workflow challenges commonly encountered in production environments.

**Perfect for:**
- Architectural Visualization Artists
- Game Asset Creators
- 3D Generalists
- VFX Artists
- Anyone working with 3ds Max

---

## 🛠️ Scripts

### 1. CityTrafic Speed Changer

![City-trafic-speed-changer-3ds-max-Script](https://github.com/user-attachments/assets/5f32f9ce-932b-4a0b-befb-d3a6325e37f3)

**Purpose:** Automatically adjust maximum speed values for CityTrafic street objects.

**Features:**
- Batch modify speed parameters across all streets in your scene
- Saves hours of manual adjustment time
- Essential for urban environment animations

**Use Case:** Perfect for architectural visualizations with animated traffic systems where speed adjustments are needed across multiple street segments.

---

### 2. Clear Smoothing Groups

![Clear-Smoothing-groups-3ds-max-Script](https://github.com/user-attachments/assets/542babc0-a2d9-4485-a4eb-a5d12b3d7f84)

**Purpose:** Remove all smoothing groups from selected geometry with one click.

**Features:**
- Instantly clear smoothing groups from single or multiple objects
- Clean up imported models
- Prepare geometry for custom smoothing workflow

**Use Case:** Useful when importing CAD models or cleaning up meshes before applying custom smoothing workflows or hard-edge modeling techniques.

---

### 3. Corona Proxy Tool

![Corona-Proxies-Tool-3ds-max-script-1](https://github.com/user-attachments/assets/fa372e2b-a5e2-4bc9-951f-09fe49e130f5)

**Purpose:** Quick display mode switching for Corona Proxies.

**Features:**
- Toggle between display modes: Solid Bounding Box, Wire Bounding Box, Point Cloud, and Full Mesh
- Batch convert multiple proxies simultaneously
- Optimize viewport performance

**Use Case:** Essential for managing heavy scenes with Corona Renderer. Switch between preview modes to balance viewport performance with visual feedback during scene setup.

---

### 4. Grouper v1.1

![Grouper_v1 1](https://github.com/user-attachments/assets/0c0f1ca5-1d42-4878-a070-0fc8401658e9)

**Purpose:** Efficiently manage group hierarchies in complex scenes.

**Features:**
- Open/close single or multiple groups simultaneously
- Batch operations on group hierarchies
- Streamline scene organization workflow

**Use Case:** Invaluable for managing complex architectural scenes or assemblies where objects are organized in nested group hierarchies. Save time navigating and editing grouped objects.

---

### 5. ID Finder

![ID-3ds-max-Script](https://github.com/user-attachments/assets/8e628206-7d27-4bbd-954d-df32506afad6)

**Purpose:** Scan and identify all Object IDs and Material IDs in your scene.

**Features:**
- Comprehensive ID overview
- Identify used and available IDs
- Prevent ID conflicts
- Great for multi-material workflows

**Use Case:** Critical for render passes and ID-based compositing workflows. Quickly audit which IDs are in use and find available IDs for new materials or objects.

---

### 6. LOL - Lost Object Layerer

![LOL-Lost-Object-Layerer-3ds-max-script](https://github.com/user-attachments/assets/663959e2-6690-4187-861d-3ad1cb3729ee)

**Purpose:** Automatically organize selected objects into a new layer.

**Features:**
- Create and populate layers with selected objects
- Batch layer assignment
- Improve scene organization

**Use Case:** Perfect for organizing messy scenes or imported files. Quickly move objects that aren't assigned to any layer into a new organized layer structure.

---

### 7. Lock Unlock Tool

![Lock-Tool-3ds-max-script](https://github.com/user-attachments/assets/2f0a63ed-263e-401f-be34-1d2c1860183c)

**Purpose:** Quick toggle lock/unlock status for selected objects.

**Features:**
- Instantly lock or unlock selected objects
- Prevent accidental modifications
- Batch lock/unlock operations

**Use Case:** Protect reference geometry, background elements, or finalized objects from accidental selection and modification during production.

---

### 8. Material Renamer

![MaterilRenamer-3ds-max-Script](https://github.com/user-attachments/assets/b15c7fb4-b6c2-41de-95b8-a075b4a950ad)

**Purpose:** Batch rename materials and objects in your scene!

**Features:**
- Rename all materials with custom naming conventions
- Batch object renaming capabilities
- Maintain organized material libraries
- Search and replace functionality

**Use Case:** Essential for cleaning up scenes with generic material names (Material #01, etc.). Establish consistent naming conventions across projects and improve collaboration workflows.

---


### 9. Null Objects Cleaner

![Null-Objects-Cleaner-3ds-max-script](https://github.com/user-attachments/assets/450ae4d3-b862-478d-898c-c3632537920d)

**Purpose:** Detect and remove null/empty objects from your scene.

**Features:**
- Automatically scan for null objects in your scene
- Display comprehensive list of found null objects
- Double-click to preview/select individual objects before deletion
- Detects null objects from Editable Poly, SplineShape, and Line classes
- Batch delete unwanted null geometry
- Clean up scene file size

**Use Case:** Essential for scene optimization and cleanup. Remove leftover null objects from import processes, modeling operations, or after deleting mesh content. Helps reduce file size and improve scene performance by eliminating unnecessary empty geometry.

---

### 10. Object Selecter

![Unbenannt11](https://github.com/user-attachments/assets/0388bd40-4f52-49e0-89a7-c3514da3b5e2)

**Purpose:** Select objects based on polygon count thresholds.

**Features:**
- Filter objects by polygon count (greater than, less than, or equal to specified value)
- Calculate V-Ray Proxies with ShowMesh option enabled
- Real-time calculation shows number of matching objects
- Preview list of found objects
- Double-click to select individual objects from the list
- Optimize scene by identifying high-poly objects

**Use Case:** Perfect for LOD (Level of Detail) management, performance optimization, and identifying heavy geometry. Quickly find all high-poly objects that need optimization or locate low-poly placeholders that need detail work. Essential for game asset pipelines and real-time visualization workflows.

---

### 11. PivotToCenterMin

![Pivot-to-center-min-3ds-max-script](https://github.com/user-attachments/assets/81fb7fa9-dc4e-4aaf-9730-fe2132ba3c25)

**Purpose:** Precisely position pivot points at the minimum Z position of objects.

**Features:**
- Move pivot to minimum Z value (bottom of object)
- Optional X/Y centering with checkbox control
- Batch process multiple selected objects
- Maintain object position while repositioning pivot
- Perfect for architectural elements and furniture placement

**Use Case:** Invaluable for architectural visualization when placing objects on floors. Automatically position pivot points at the base of furniture, props, or building elements for accurate placement and rotation. Eliminates manual pivot point adjustment for hundreds of assets.

---

### 12. Reset All 3ds Max Materials

![ResetAllmaxMaterials](https://github.com/user-attachments/assets/d0a15ce7-130d-40b9-ba99-12cd04a6cb79)

**Purpose:** Completely remove all materials from selected objects.

**Features:**
- Strip all materials from selection with one click
- Batch process multiple objects simultaneously
- Return objects to default grey material state
- Clean slate for material reassignment
- Lightweight scene cleanup

**Use Case:** Perfect for starting fresh with material assignments, cleaning up imported models with unwanted materials, or preparing objects for new material workflows. Essential when repurposing assets or cleaning up messy inherited scenes.

---

### 13. Reset Material Editor

![resetMatEditor_v1 3](https://github.com/user-attachments/assets/0b77cbca-5779-405f-adba-3f6346ffbbdb)

**Purpose:** Reset all material editor slots to default renderer materials.

**Features:**
- Clear entire material editor with one click
- Multi-renderer support:
  - V-Ray materials
  - Corona materials
  - Standard materials
  - Mental Ray materials
  - FStorm materials
  - Arnold materials
- Maintain consistent material editor workflow
- Quick project reset capability

**Use Case:** Essential for starting new projects with a clean material editor or when switching between renderers. Eliminate material clutter and establish a fresh material library baseline. Perfect for template scene creation and project initialization workflows.

---

### 14. Placer

![Placer-3ds-max-Script](https://github.com/user-attachments/assets/9021f84d-0ef1-405b-a9a9-495617edb99d)

**Purpose:** Interactively place objects on surface geometry with real-time preview.

**Features:**
- Pick target surface/ground geometry
- Interactive object placement workflow
- Optional animation recording during placement
- Real-time surface snapping
- Maintain object orientation relative to surface
- Streamline asset distribution across terrain/surfaces

**Use Case:** Perfect for populating environments with props, vegetation, or architectural elements. Place objects along terrain, building surfaces, or any geometry with precise surface alignment. Essential for landscape design, environment art, and scatter workflows without external plugins. Ideal for organic asset distribution in architectural visualizations.

---

**Updated Repository Stats:**
- **14 Professional MaxScript Tools**
- **Covering:** Scene Management, Material Workflows, Object Manipulation, Optimization, and Interactive Placement
- **Tested on:** 3ds Max 2018-2024
- **Production-Ready:** Used in real-world architectural visualization and game asset workflows

## 📦 Installation

### Method 1: Manual Installation

1. Download the desired `.ms` script file(s) from this repository
2. Copy the script to one of these locations:
   ```
   C:\Users\[YourUsername]\AppData\Local\Autodesk\3dsMax\[Version]\ENU\scripts\
   ```
   or
   ```
   C:\Program Files\Autodesk\3ds Max [Version]\scripts\
   ```

3. In 3ds Max, go to **Scripting → Run Script**
4. Navigate to and select the downloaded script
5. The script interface will appear

### Method 2: Drag and Drop

1. Simply drag the `.ms` file into your 3ds Max viewport
2. The script will execute automatically

### Creating Toolbar Buttons (Recommended)

1. Go to **Customize → Customize User Interface**
2. Select the **Toolbars** tab
3. Category: Choose "TodScript Tools" (if available) or create new category
4. Drag the script to your toolbar
5. Assign custom icons (optional)

---

## 💻 Requirements

- **Software:** Autodesk 3ds Max 2018 or later
- **Renderer:** Corona Renderer (for Corona Proxy Tool only)
- **Operating System:** Windows 7/10/11

**Compatibility:**
- Most scripts are renderer-agnostic
- Corona Proxy Tool requires Corona Renderer installed
- Tested on 3ds Max 2018-2024

---

## 📖 Usage

Each script includes an intuitive user interface. General workflow:

1. **Launch the script** using one of the installation methods above
2. **Select target objects** in your scene (where applicable)
3. **Adjust parameters** in the script interface
4. **Click Execute/Apply** to run the operation
5. Results are applied immediately (most operations are undo-able)

**Pro Tip:** Create keyboard shortcuts for frequently used scripts via **Customize → Customize User Interface → Keyboard** tab.

---

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

### How to Contribute:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Reporting Bugs:
- Use the **Issues** tab
- Include 3ds Max version
- Describe the expected vs actual behavior
- Provide steps to reproduce

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

Free to use in personal and commercial projects. Attribution appreciated but not required.

---

## 👤 Author

**Todor Todorov**
- 🎨 Senior 3D Artist & Technical Artist
- 📍 Düsseldorf, Germany
- 💼 Specialization: Architectural Visualization & MaxScript Development

### 🔗 Connect

- **LinkedIn:** [Your LinkedIn Profile](https://linkedin.com/in/yourprofile)
- **Portfolio:** [Your Portfolio](https://yourportfolio.com)
- **Email:** your.email@example.com

---

## ⭐ Support

If these scripts helped improve your workflow, please:
- ⭐ **Star this repository**
- 🐛 Report bugs or request features
- 📢 Share with colleagues
- ☕ [Buy me a coffee](https://buymeacoffee.com/yourname) (optional)

---

## 📝 Changelog

### Version 1.0 (Current)
- Initial release of 8 core scripts
- Grouper updated to v1.1 with improved stability

### Planned Features
- Material ID Manager
- UV Checker Tool
- Batch Export Utility

---

## 🙏 Acknowledgments

- 3ds Max scripting community
- CGTalk and ScriptSpot forums
- Beta testers and early adopters

---

**Made with ❤️ for the 3ds Max community**
