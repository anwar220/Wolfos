# classes2.dex

.class public final Landroid/media/MediaExtractor$CasInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasInfo"
.end annotation


# instance fields
.field private final mPrivateData:[B

.field private final mSession:Landroid/media/MediaCas$Session;

.field private final mSystemId:I


# direct methods
.method constructor <init>(ILandroid/media/MediaCas$Session;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    iput-object p2, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    iput-object p3, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    return-void
.end method


# virtual methods
.method public getPrivateData()[B
    .registers 2

    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    return-object v0
.end method

.method public getSession()Landroid/media/MediaCas$Session;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    return-object v0
.end method

.method public getSystemId()I
    .registers 2

    iget v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    return v0
.end method
