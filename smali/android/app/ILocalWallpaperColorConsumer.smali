# classes.dex

.class public interface abstract Landroid/app/ILocalWallpaperColorConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ILocalWallpaperColorConsumer$Stub;,
        Landroid/app/ILocalWallpaperColorConsumer$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.ILocalWallpaperColorConsumer"


# virtual methods
.method public abstract onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
