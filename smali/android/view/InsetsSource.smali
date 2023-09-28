# classes3.dex

.class public Landroid/view/InsetsSource;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFrame:Landroid/graphics/Rect;

.field private mInsetsRoundedCornerFrame:Z

.field private final mTmpFrame:Landroid/graphics/Rect;

.field private final mType:I

.field private mVisible:Z

.field private mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/InsetsSource$1;

    invoke-direct {v0}, Landroid/view/InsetsSource$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iput p1, p0, Landroid/view/InsetsSource;->mType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_2e

    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    :goto_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/view/InsetsSource;->mType:I

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_27

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return-void
.end method

.method private calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 8

    if-nez p3, :cond_9

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_9

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0}, Landroid/view/InsetsSource;->getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2d

    :cond_27
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    :goto_2d
    nop

    if-nez v0, :cond_33

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    :cond_33
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    const/16 v3, 0x13

    if-ne v1, v3, :cond_46

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_46
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v1, v3, :cond_89

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_65

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_65
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v3, :cond_78

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_78
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_bb

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_89
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_bb

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_a8

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_a8
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_bb

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_bb
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1
.end method

.method private static getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x1

    return v0

    :cond_42
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    :goto_7
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsSource type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " frame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_31

    const-string v0, " visibleFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_31
    const-string v0, " visible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " insetsRoundedCornerFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_28

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_28
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSource;

    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    iget v4, v2, Landroid/view/InsetsSource;->mType:I

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-boolean v5, v2, Landroid/view/InsetsSource;->mVisible:Z

    if-eq v4, v5, :cond_23

    return v1

    :cond_23
    if-eqz p2, :cond_2c

    if-nez v4, :cond_2c

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2c

    return v0

    :cond_2c
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    :cond_37
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iget-boolean v3, v2, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    if-eq v0, v3, :cond_3e

    return v1

    :cond_3e
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsetsRoundedCornerFrame()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    return v0
.end method

.method public getVisibleFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSource;->mVisible:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    add-int/2addr v0, v2

    return v0
.end method

.method isUserControllable()Z
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return v0
.end method

.method public set(Landroid/view/InsetsSource;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_17

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return-void
.end method

.method public setFrame(IIII)V
    .registers 6

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setInsetsRoundedCornerFrame(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    return-void
.end method

.method public setVisibleFrame(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSource: {mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInsetsRoundedCornerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
