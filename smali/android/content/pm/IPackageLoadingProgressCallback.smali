# classes.dex

.class public interface abstract Landroid/content/pm/IPackageLoadingProgressCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageLoadingProgressCallback$Stub;,
        Landroid/content/pm/IPackageLoadingProgressCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageLoadingProgressCallback"


# virtual methods
.method public abstract onPackageLoadingProgressChanged(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
