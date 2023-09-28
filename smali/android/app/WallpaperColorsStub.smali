# classes.dex

.class public Landroid/app/WallpaperColorsStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Landroid/app/WallpaperColorsStub;
    .registers 1

    const-class v0, Landroid/app/WallpaperColorsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColorsStub;

    return-object v0
.end method


# virtual methods
.method miuiCalculateDarkHints(Landroid/graphics/Bitmap;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
