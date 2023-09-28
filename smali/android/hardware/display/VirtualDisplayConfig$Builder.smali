# classes.dex

.class public final Landroid/hardware/display/VirtualDisplayConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mDensityDpi:I

.field private mDisplayIdToMirror:I

.field private mFlags:I

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mUniqueId:Ljava/lang/String;

.field private mWidth:I

.field private mWindowManagerMirroring:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    const-class v4, Landroid/annotation/IntRange;

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x1

    move/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    const-class v10, Landroid/annotation/IntRange;

    const/4 v11, 0x0

    const-string v13, "from"

    const-wide/16 v14, 0x1

    move/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move/from16 v10, p4

    iput v10, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    const-class v4, Landroid/annotation/IntRange;

    const-string v7, "from"

    move/from16 v6, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/hardware/display/VirtualDisplayConfig;
    .registers 15

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_16

    iput v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    :cond_16
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    const/4 v6, 0x0

    if-nez v2, :cond_20

    iput-object v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    :cond_20
    const-wide/16 v7, 0x40

    and-long/2addr v7, v0

    cmp-long v2, v7, v4

    if-nez v2, :cond_29

    iput-object v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    :cond_29
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_32

    iput v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    :cond_32
    const-wide/16 v6, 0x100

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_3b

    iput-boolean v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    :cond_3b
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v5, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    iget v7, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    iget v8, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    iget v9, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    iget-object v10, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    iget-object v11, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    iget v12, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    iget-boolean v13, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public setDensityDpi(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    return-object p0
.end method

.method public setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    return-object p0
.end method

.method public setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    return-object p0
.end method

.method public setHeight(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    return-object p0
.end method

.method public setWindowManagerMirroring(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    return-object p0
.end method
