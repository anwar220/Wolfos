# classes2.dex

.class public final Landroid/media/VolumeInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsMuted:Z

.field private mMaxVolIndex:I

.field private mMinVolIndex:I

.field private mStreamType:I

.field private mUsesStreamType:Z

.field private mVolGroupId:I

.field private mVolIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    const/4 v1, 0x3

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    const/16 v0, -0x64

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolGroupId(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeInfo;
    .registers 12

    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    const-string v1, " greater than max index:"

    const/16 v2, -0x64

    if-eq v0, v2, :cond_60

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    const-string v4, "Volume index:"

    if-eq v3, v2, :cond_36

    if-lt v0, v3, :cond_11

    goto :goto_36

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lower than min index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v3, v2, :cond_60

    if-gt v0, v3, :cond_3d

    goto :goto_60

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    if-eq v0, v2, :cond_90

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v3, v2, :cond_90

    if-gt v0, v3, :cond_6b

    goto :goto_90

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min volume index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    :goto_90
    new-instance v0, Landroid/media/VolumeInfo;

    iget-boolean v3, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    iget-boolean v4, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    iget v5, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iget v6, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iget v7, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    iget v8, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    iget v9, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/media/VolumeInfo;-><init>(ZZIIIIILandroid/media/VolumeInfo-IA;)V

    return-object v0
.end method

.method public setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4

    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    return-object p0
.end method

.method public setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4

    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    return-object p0
.end method

.method public setMuted(Z)Landroid/media/VolumeInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    return-object p0
.end method

.method public setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4

    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    return-object p0
.end method
