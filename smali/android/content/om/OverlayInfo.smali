# classes.dex

.class public final Landroid/content/om/OverlayInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/om/CriticalOverlayInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayInfo$State;
    }
.end annotation


# static fields
.field public static final CATEGORY_THEME:Ljava/lang/String; = "android.theme"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x3

.field public static final STATE_ENABLED_IMMUTABLE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_MISSING_TARGET:I = 0x0

.field public static final STATE_NO_IDMAP:I = 0x1

.field public static final STATE_OVERLAY_IS_BEING_REPLACED:I = 0x5

.field public static final STATE_TARGET_IS_BEING_REPLACED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final category:Ljava/lang/String;

.field public final isFabricated:Z

.field public final isMutable:Z

.field private mIdentifierCached:Landroid/content/om/OverlayIdentifier;

.field public final overlayName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final priority:I

.field public final state:I

.field public final targetOverlayableName:Ljava/lang/String;

.field public final targetPackageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/om/OverlayInfo$1;

    invoke-direct {v0}, Landroid/content/om/OverlayInfo$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/om/OverlayInfo;I)V
    .registers 15

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v8, p1, Landroid/content/om/OverlayInfo;->userId:I

    iget v9, p1, Landroid/content/om/OverlayInfo;->priority:I

    iget-boolean v10, p1, Landroid/content/om/OverlayInfo;->isMutable:Z

    iget-boolean v11, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v11}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 22

    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iput p7, p0, Landroid/content/om/OverlayInfo;->state:I

    iput p8, p0, Landroid/content/om/OverlayInfo;->userId:I

    iput p9, p0, Landroid/content/om/OverlayInfo;->priority:I

    iput-boolean p10, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    iput-boolean p11, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    return-void
.end method

.method private ensureValidState()V
    .registers 4

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_4e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_32  #0xffffffff, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    nop

    return-void

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseCodePath must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPackageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4e
    .packed-switch -0x1
        :pswitch_32  #ffffffff
        :pswitch_32  #00000000
        :pswitch_32  #00000001
        :pswitch_32  #00000002
        :pswitch_32  #00000003
        :pswitch_32  #00000004
        :pswitch_32  #00000005
        :pswitch_32  #00000006
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const-string v0, "<unknown state>"

    return-object v0

    :pswitch_6  #0x6
    const-string v0, "STATE_ENABLED_IMMUTABLE"

    return-object v0

    :pswitch_9  #0x5
    const-string v0, "STATE_OVERLAY_IS_BEING_REPLACED"

    return-object v0

    :pswitch_c  #0x4
    const-string v0, "STATE_TARGET_IS_BEING_REPLACED"

    return-object v0

    :pswitch_f  #0x3
    const-string v0, "STATE_ENABLED"

    return-object v0

    :pswitch_12  #0x2
    const-string v0, "STATE_DISABLED"

    return-object v0

    :pswitch_15  #0x1
    const-string v0, "STATE_NO_IDMAP"

    return-object v0

    :pswitch_18  #0x0
    const-string v0, "STATE_MISSING_TARGET"

    return-object v0

    :pswitch_1b  #0xffffffff
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_1b  #ffffffff
        :pswitch_18  #00000000
        :pswitch_15  #00000001
        :pswitch_12  #00000002
        :pswitch_f  #00000003
        :pswitch_c  #00000004
        :pswitch_9  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/content/om/OverlayInfo;

    iget v3, p0, Landroid/content/om/OverlayInfo;->userId:I

    iget v4, v2, Landroid/content/om/OverlayInfo;->userId:I

    if-eq v3, v4, :cond_1d

    return v1

    :cond_1d
    iget v3, p0, Landroid/content/om/OverlayInfo;->state:I

    iget v4, v2, Landroid/content/om/OverlayInfo;->state:I

    if-eq v3, v4, :cond_24

    return v1

    :cond_24
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v1

    :cond_2f
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    return v1

    :cond_3a
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    return v1

    :cond_45
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    return v1

    :cond_50
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    return v1

    :cond_5b
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    return v1

    :cond_66
    return v0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;
    .registers 4

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    if-nez v0, :cond_f

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    :cond_f
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->mIdentifierCached:Landroid/content/om/OverlayIdentifier;

    return-object v0
.end method

.method public getOverlayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetOverlayableName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/content/om/OverlayInfo;->userId:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/content/om/OverlayInfo;->state:I

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_16

    move v3, v4

    goto :goto_1a

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    if-nez v3, :cond_23

    move v3, v4

    goto :goto_27

    :cond_23
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_27
    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-nez v3, :cond_30

    move v3, v4

    goto :goto_34

    :cond_30
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_34
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    if-nez v3, :cond_3d

    move v3, v4

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_41
    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    if-nez v3, :cond_4a

    move v3, v4

    goto :goto_4e

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4e
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-nez v3, :cond_56

    goto :goto_5a

    :cond_56
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_5a
    add-int/2addr v1, v4

    return v1
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    sparse-switch v0, :sswitch_data_a

    const/4 v0, 0x0

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x3 -> :sswitch_7
        0x6 -> :sswitch_7
    .end sparse-switch
.end method

.method public isFabricated()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverlayInfo {packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetOverlayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-static {v1}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),, userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isMutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
