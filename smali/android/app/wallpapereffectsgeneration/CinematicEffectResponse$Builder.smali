# classes.dex

.class public final Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private mImageContentType:I

.field private mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private mStatusCode:I

.field private mTaskId:Ljava/lang/String;

.field private mTexturedMeshes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStatusCode:I

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTaskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .registers 11

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    :cond_c
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    iget v3, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStatusCode:I

    iget-object v4, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTaskId:Ljava/lang/String;

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mImageContentType:I

    iget-object v6, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    iget-object v7, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iget-object v8, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V

    return-object v0
.end method

.method public setEndKeyFrame(Landroid/app/wallpapereffectsgeneration/CameraAttributes;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object p0
.end method

.method public setImageContentType(I)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mImageContentType:I

    return-object p0
.end method

.method public setStartKeyFrame(Landroid/app/wallpapereffectsgeneration/CameraAttributes;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object p0
.end method

.method public setTexturedMeshes(Ljava/util/List;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;)",
            "Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    return-object p0
.end method
