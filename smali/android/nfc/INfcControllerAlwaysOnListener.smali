# classes2.dex

.class public interface abstract Landroid/nfc/INfcControllerAlwaysOnListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcControllerAlwaysOnListener$Stub;,
        Landroid/nfc/INfcControllerAlwaysOnListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcControllerAlwaysOnListener"


# virtual methods
.method public abstract onControllerAlwaysOnChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
