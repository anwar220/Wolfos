# classes.dex

.class public interface abstract Landroid/debug/IAdbCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbCallback$Stub;,
        Landroid/debug/IAdbCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.debug.IAdbCallback"


# virtual methods
.method public abstract onDebuggingChanged(ZB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
