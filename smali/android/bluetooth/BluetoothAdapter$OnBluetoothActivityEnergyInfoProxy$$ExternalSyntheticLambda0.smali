# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->lambda$onError$2(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V

    return-void
.end method
