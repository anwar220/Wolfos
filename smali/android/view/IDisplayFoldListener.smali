# classes3.dex

.class public interface abstract Landroid/view/IDisplayFoldListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayFoldListener$Stub;,
        Landroid/view/IDisplayFoldListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayFoldListener"


# virtual methods
.method public abstract onDisplayFoldChanged(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method