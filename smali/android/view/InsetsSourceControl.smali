# classes3.dex

.class public Landroid/view/InsetsSourceControl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_HINTS:Landroid/graphics/Insets;


# instance fields
.field private mInsetsHint:Landroid/graphics/Insets;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private mParcelableFlags:I

.field private mSkipAnimationOnce:Z

.field private final mSurfacePosition:Landroid/graphics/Point;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    sput-object v0, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    new-instance v0, Landroid/view/InsetsSourceControl$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/InsetsSourceControl;->mType:I

    iput-object p2, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iput-object p4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSourceControl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/view/InsetsSourceControl;->mType:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-string v2, "InsetsSourceControl"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_1a

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    :goto_1a
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsSourceControl type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLeash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mSurfacePosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mInsetsHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mSkipAnimationOnce="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_42

    const-wide v5, 0x10b00000003L

    invoke-virtual {v4, p1, v5, v6}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_42
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceControl;

    iget-object v3, v2, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mType:I

    if-ne v4, v5, :cond_46

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eq v4, v3, :cond_2b

    if-eqz v4, :cond_46

    if-eqz v3, :cond_46

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_46

    :cond_2b
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v4, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-ne v4, v5, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    return v0

    :cond_48
    :goto_48
    return v1
.end method

.method public getAndClearSkipAnimationOnce()Z
    .registers 3

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return v0
.end method

.method public getInsetsHint()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfacePosition()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    add-int/2addr v0, v2

    return v0
.end method

.method public release(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public setInsetsHint(IIII)V
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public setInsetsHint(Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public setParcelableFlags(I)V
    .registers 2

    iput p1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    return-void
.end method

.method public setSkipAnimationOnce(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return-void
.end method

.method public setSurfacePosition(II)Z
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSourceControl: {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurfacePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInsetsHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
