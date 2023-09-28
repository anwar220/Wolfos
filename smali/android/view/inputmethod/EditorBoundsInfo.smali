# classes2.dex

.class public final Landroid/view/inputmethod/EditorBoundsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorBoundsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEditorBounds:Landroid/graphics/RectF;

.field private final mHandwritingBounds:Landroid/graphics/RectF;

.field private final mHashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmEditorBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmHandwritingBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/view/inputmethod/EditorBoundsInfo;

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/EditorBoundsInfo;

    iget-object v2, v1, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    return v0

    :cond_23
    return v0
.end method

.method public getEditorBounds()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getHandwritingBounds()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditorBoundsInfo{mEditorBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHandwritingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
