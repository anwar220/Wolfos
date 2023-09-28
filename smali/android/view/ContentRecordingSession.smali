# classes3.dex

.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final RECORD_CONTENT_TASK:I = 0x1


# instance fields
.field private mContentToRecord:I

.field private mDisplayId:I

.field private mTokenToRecord:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    iput p2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p2, :cond_4b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_16

    goto :goto_4b

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentToRecord was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    :goto_4b
    iput-object p3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1e

    move-object v5, v1

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_22
    iput v3, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    iput v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v4, :cond_61

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2c

    goto :goto_61

    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentToRecord was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "), RECORD_CONTENT_TASK("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    :goto_61
    iput-object v5, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    invoke-static {v0, v1, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static createDisplaySession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 3

    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    return-object v0
.end method

.method public static createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 3

    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    return-object v0
.end method

.method public static isSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .registers 4

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isValid(Landroid/view/ContentRecordingSession;)Z
    .registers 3

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static recordContentToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x1
    const-string v0, "RECORD_CONTENT_TASK"

    return-object v0

    :pswitch_b  #0x0
    const-string v0, "RECORD_CONTENT_DISPLAY"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_8  #00000001
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

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/ContentRecordingSession;

    iget v3, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mDisplayId:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getContentToRecord()I
    .registers 2

    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    return v0
.end method

.method public getTokenToRecord()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 6

    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p1, :cond_3e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_3e

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentToRecord was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    :goto_3e
    return-object p0
.end method

.method public setDisplayId(I)Landroid/view/ContentRecordingSession;
    .registers 2

    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    return-object p0
.end method

.method public setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 4

    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentRecordingSession { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_1c
    return-void
.end method
