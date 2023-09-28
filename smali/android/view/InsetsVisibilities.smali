# classes3.dex

.class public Landroid/view/InsetsVisibilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsVisibilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVISIBLE:I = -0x1

.field private static final UNSPECIFIED:I = 0x0

.field private static final VISIBLE:I = 0x1


# instance fields
.field private final mVisibilities:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/InsetsVisibilities$1;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities$1;-><init>()V

    sput-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsVisibilities;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p0, p1}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/view/InsetsVisibilities;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    move-object v1, p1

    check-cast v1, Landroid/view/InsetsVisibilities;

    iget-object v1, v1, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public getVisibility(I)Z
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    goto :goto_10

    :cond_c
    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public set(Landroid/view/InsetsVisibilities;)V
    .registers 6

    iget-object v0, p1, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    iget-object v1, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setVisibility(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, -0x1

    :goto_7
    aput v1, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x17

    if-gt v1, v2, :cond_3d

    iget-object v2, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    aget v2, v2, v1

    if-eqz v2, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    const-string/jumbo v4, "visible"

    goto :goto_2f

    :cond_2c
    const-string/jumbo v4, "invisible"

    :goto_2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3d
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsVisibilities;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
