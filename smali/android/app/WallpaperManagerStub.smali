# classes.dex

.class public interface abstract Landroid/app/WallpaperManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/app/WallpaperManagerStub;
    .registers 1

    const-class v0, Landroid/app/WallpaperManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
.end method
