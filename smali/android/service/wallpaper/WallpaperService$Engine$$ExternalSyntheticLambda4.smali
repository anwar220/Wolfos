# classes3.dex

.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$removeLocalColorsAreas$4$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V

    return-void
.end method
