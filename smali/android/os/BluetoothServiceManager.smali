# classes3.dex

.class public Landroid/os/BluetoothServiceManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BluetoothServiceManager$ServiceNotFoundException;,
        Landroid/os/BluetoothServiceManager$ServiceRegisterer;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothManagerServiceRegisterer()Landroid/os/BluetoothServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;

    const-string v1, "bluetooth_manager"

    invoke-direct {v0, v1}, Landroid/os/BluetoothServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
