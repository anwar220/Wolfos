# classes2.dex

.class public interface abstract Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;,
        Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IRemoteMagnificationAnimationCallback"


# virtual methods
.method public abstract onResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method