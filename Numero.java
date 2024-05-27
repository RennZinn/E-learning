import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.Arrays;

public class Numero extends JFrame {
    private JTextField numerosTextField;
    private JTextField menorTextField;
    private JTextField maiorTextField;
    private JTextField mediaTextField;

    public Numero() {
        setTitle("Calculadora de Números");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(5, 2));

        JLabel numerosLabel = new JLabel("Números (separados por ,):");
        panel.add(numerosLabel);

        numerosTextField = new JTextField();
        panel.add(numerosTextField);

        JButton okButton = new JButton("OK");
        okButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                calcular();
            }
        });
        panel.add(okButton);

        JLabel menorLabel = new JLabel("Menor:");
        panel.add(menorLabel);

        menorTextField = new JTextField();
        menorTextField.setEditable(false);
        panel.add(menorTextField);

        JLabel maiorLabel = new JLabel("Maior:");
        panel.add(maiorLabel);

        maiorTextField = new JTextField();
        maiorTextField.setEditable(false);
        panel.add(maiorTextField);

        JLabel mediaLabel = new JLabel("Média:");
        panel.add(mediaLabel);

        mediaTextField = new JTextField();
        mediaTextField.setEditable(false);
        panel.add(mediaTextField);

        JButton exibirButton = new JButton("EXIBIR");
        exibirButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                exibirResultados();
            }
        });
        panel.add(exibirButton);

        add(panel);
        pack();
    }

    private void calcular() {
        String numerosStr = numerosTextField.getText();
        String[] numerosArray = numerosStr.split(",");
        double[] numeros = new double[numerosArray.length];

        for (int i = 0; i < numerosArray.length; i++) {
            numeros[i] = Double.parseDouble(numerosArray[i]);
        }

        Arrays.sort(numeros);
        menorTextField.setText(String.valueOf(numeros[0]));
        maiorTextField.setText(String.valueOf(numeros[numeros.length - 1]));

        double soma = 0;
        for (double num : numeros) {
            soma += num;
        }
        double media = soma / numeros.length;
        mediaTextField.setText(String.valueOf(media));
    }

    private void exibirResultados() {
        JOptionPane.showMessageDialog(this,
                "Menor: " + menorTextField.getText() +
                        "\nMaior: " + maiorTextField.getText() +
                        "\nMédia: " + mediaTextField.getText(),
                "Resultados",
                JOptionPane.INFORMATION_MESSAGE);
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

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                Numero frame = new Numero();
                frame.setVisible(true);
            }
        });
    }
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables

