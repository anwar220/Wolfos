# classes.dex

.class public final synthetic Landroid/content/ContentResolver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/CancellationSignal;Landroid/util/Size;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$2:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 10

    iget v0, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$2:Landroid/util/Size;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/content/ContentResolver;->lambda$loadThumbnail$1(ILandroid/os/CancellationSignal;Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
