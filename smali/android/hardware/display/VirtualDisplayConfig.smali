# classes.dex

.class public final Landroid/hardware/display/VirtualDisplayConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/VirtualDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$1;

    invoke-direct {v0}, Landroid/hardware/display/VirtualDisplayConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iput v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iput-boolean v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_36

    move-object/from16 v15, p1

    move-object v5, v2

    goto :goto_40

    :cond_36
    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    :goto_40
    move-object v9, v5

    and-int/lit8 v5, v3, 0x40

    if-nez v5, :cond_47

    move-object v5, v2

    goto :goto_4b

    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    :goto_4b
    move-object v10, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v2, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v11, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    const-class v5, Landroid/annotation/IntRange;

    const/4 v6, 0x0

    const-wide/16 v16, 0x1

    const-string v18, "from"

    move v7, v11

    move/from16 v19, v8

    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, v16

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v12, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    const-class v5, Landroid/annotation/IntRange;

    const-wide/16 v9, 0x1

    const-string v8, "from"

    move v7, v12

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v13, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    const-class v5, Landroid/annotation/IntRange;

    const-string v8, "from"

    move v7, v13

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v14, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    const-class v5, Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;

    invoke-static {v5, v2, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-object/from16 v2, v20

    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    move-object/from16 v5, v21

    iput-object v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    move/from16 v6, v19

    iput v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iput-boolean v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZ)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iput-boolean v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    iput-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v3, p2

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    const-class v5, Landroid/annotation/IntRange;

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x1

    move/from16 v7, p2

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move/from16 v5, p3

    iput v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    const-class v11, Landroid/annotation/IntRange;

    const/4 v12, 0x0

    const-string v14, "from"

    const-wide/16 v15, 0x1

    move/from16 v13, p3

    invoke-static/range {v11 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move/from16 v6, p4

    iput v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    const-class v17, Landroid/annotation/IntRange;

    const/16 v18, 0x0

    const-string v20, "from"

    const-wide/16 v21, 0x1

    move/from16 v19, p4

    invoke-static/range {v17 .. v22}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    const-class v7, Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;

    invoke-static {v7, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-object/from16 v4, p6

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    move/from16 v8, p8

    iput v8, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDensityDpi()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    return v0
.end method

.method public getDisplayIdToMirror()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    return v0
.end method

.method public isWindowManagerMirroring()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x20

    :cond_d
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x40

    :cond_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_36

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_36
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_3d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3d
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
