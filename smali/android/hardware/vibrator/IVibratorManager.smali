# classes2.dex

.class public interface abstract Landroid/hardware/vibrator/IVibratorManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibratorManager$Stub;,
        Landroid/hardware/vibrator/IVibratorManager$Default;
    }
.end annotation


# static fields
.field public static final CAP_MIXED_TRIGGER_COMPOSE:I = 0x40

.field public static final CAP_MIXED_TRIGGER_ON:I = 0x10

.field public static final CAP_MIXED_TRIGGER_PERFORM:I = 0x20

.field public static final CAP_PREPARE_COMPOSE:I = 0x8

.field public static final CAP_PREPARE_ON:I = 0x2

.field public static final CAP_PREPARE_PERFORM:I = 0x4

.field public static final CAP_SYNC:I = 0x1

.field public static final CAP_TRIGGER_CALLBACK:I = 0x80

.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "ea8742d6993e1a82917da38b9938e537aa7fcb54"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$vibrator$IVibratorManager"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/vibrator/IVibratorManager;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancelSynced()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCapabilities()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVibrator(I)Landroid/hardware/vibrator/IVibrator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVibratorIds()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract prepareSynced([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
