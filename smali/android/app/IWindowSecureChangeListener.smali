# classes.dex

.class public interface abstract Landroid/app/IWindowSecureChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWindowSecureChangeListener$Stub;,
        Landroid/app/IWindowSecureChangeListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWindowSecureChangeListener"


# virtual methods
.method public abstract onSecureChangeCallback(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
