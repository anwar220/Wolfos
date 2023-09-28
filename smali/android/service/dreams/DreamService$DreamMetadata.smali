# classes3.dex

.class public final Landroid/service/dreams/DreamService$DreamMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamMetadata"
.end annotation


# instance fields
.field public final previewImage:Landroid/graphics/drawable/Drawable;

.field public final settingsActivity:Landroid/content/ComponentName;

.field public final showComplications:Z


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    return-void
.end method
