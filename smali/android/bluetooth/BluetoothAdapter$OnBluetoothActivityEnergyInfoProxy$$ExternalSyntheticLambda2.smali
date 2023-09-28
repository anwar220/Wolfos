# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method
