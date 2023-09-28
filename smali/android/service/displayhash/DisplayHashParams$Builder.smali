# classes3.dex

.class public final Landroid/service/displayhash/DisplayHashParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/DisplayHashParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBufferSize:Landroid/util/Size;

.field private mGrayscaleBuffer:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/service/displayhash/DisplayHashParams;
    .registers 4

    new-instance v0, Landroid/service/displayhash/DisplayHashParams;

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mBufferSize:Landroid/util/Size;

    iget-boolean v2, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mGrayscaleBuffer:Z

    invoke-direct {v0, v1, v2}, Landroid/service/displayhash/DisplayHashParams;-><init>(Landroid/util/Size;Z)V

    return-object v0
.end method

.method public setBufferSize(II)Landroid/service/displayhash/DisplayHashParams$Builder;
    .registers 4

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mBufferSize:Landroid/util/Size;

    return-object p0
.end method

.method public setGrayscaleBuffer(Z)Landroid/service/displayhash/DisplayHashParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mGrayscaleBuffer:Z

    return-object p0
.end method
