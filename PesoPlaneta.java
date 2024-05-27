package exercicio4;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;

public class Tela extends javax.swing.JFrame {

    private static final double[] GRAVITY_FACTORS = {0.38, 0.91, 0.38, 2.34, 1.06, 0.92, 1.19};
    private static final String[] PLANETS = {"Mercúrio", "Vênus", "Marte", "Júpiter", "Saturno", "Urano", "Netuno"};
    
    private JComboBox<String> planetComboBox;
    private JTextField weightField;
    private JLabel resultLabel;
    
    public Tela() {
        initComponents(); // Inicialização dos componentes gerados pelo NetBeans
        
        setTitle("Calculadora de Peso Planetário");
        setSize(300, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);
        
        JLabel weightLabel = new JLabel("Peso na Terra:");
        weightLabel.setBounds(20, 20, 100, 20);
        add(weightLabel);

        weightField = new JTextField();
        weightField.setBounds(130, 20, 120, 20);
        add(weightField);

        JLabel planetLabel = new JLabel("Planeta:");
        planetLabel.setBounds(20, 50, 100, 20);
        add(planetLabel);

        planetComboBox = new JComboBox<>(PLANETS);
        planetComboBox.setBounds(130, 50, 120, 20);
        add(planetComboBox);

        JButton calculateButton = new JButton("Calcular");
        calculateButton.setBounds(100, 80, 100, 30);
        add(calculateButton);

        resultLabel = new JLabel();
        resultLabel.setBounds(20, 120, 260, 20);
        add(resultLabel);

        calculateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                calculateWeight();
            }
        });
    }

    private void calculateWeight() {
        try {
            double weight = Double.parseDouble(weightField.getText());
            int selectedIndex = planetComboBox.getSelectedIndex();
            double gravityFactor = GRAVITY_FACTORS[selectedIndex];
            double weightOnPlanet = weight * gravityFactor;

            DecimalFormat df = new DecimalFormat("#.##");
            resultLabel.setText("Peso em " + PLANETS[selectedIndex] + ": " + df.format(weightOnPlanet) + " kg");
        } catch (NumberFormatException e) {
            resultLabel.setText("Por favor, insira um peso válido.");
        }
    }
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
 public static void main(String args[]) {
        /* Código para definir o visual do programa */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Tela.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        
        /* Criar e exibir o formulário */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Tela().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
