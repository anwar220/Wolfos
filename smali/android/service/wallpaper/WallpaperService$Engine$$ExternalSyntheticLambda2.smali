# classes3.dex

.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public synthetic constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyColorsChanged()V

    return-void
.end method
