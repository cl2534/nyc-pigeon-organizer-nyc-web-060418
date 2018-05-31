def nyc_pigeon_organizer(data)
  result = {}
  data.each do |label, attributes|
    attributes.each do |attribute, names|
+      names.each do |name|
+        if pigeons_organized[name] == nil
+          pigeons_organized[name]= {}
+        end
+        if pigeons_organized[name][ones] == nil
+          pigeons_organized[name][ones] = []
+          pigeons_organized[name][ones] << attribute.to_s
+        else
+          pigeons_organized[name][ones] << attribute.to_s
+        end
+      end
+    end
+  end
+  pigeons_organized
+end
end