# classes2.dex

.class public interface abstract Landroid/media/ISpatializerOutputCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerOutputCallback$Stub;,
        Landroid/media/ISpatializerOutputCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerOutputCallback"


# virtual methods
.method public abstract dispatchSpatializerOutputChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
