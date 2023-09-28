# classes2.dex

.class public final Landroid/view/contentcapture/ContentCaptureContext;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureContext$Builder;,
        Landroid/view/contentcapture/ContentCaptureContext$ContextCreationFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DISABLED_BY_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_DISABLED_BY_FLAG_SECURE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_RECONNECTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mActivityId:Landroid/app/assist/ActivityId;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mDisplayId:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mFlags:I

.field private final mHasClientContext:Z

.field private final mId:Landroid/content/LocusId;

.field private mParentSessionId:I

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureContext$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmId(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    iget-boolean v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    goto :goto_1b

    :cond_14
    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    :goto_1b
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput p6, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iput p4, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object p5, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public static forLocusId(Ljava/lang/String;)Landroid/view/contentcapture/ContentCaptureContext;
    .registers 3

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    return-object v0
.end method

.method private fromServer()Z
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    if-eqz v0, :cond_20

    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, p1}, Landroid/content/LocusId;->dump(Ljava/io/PrintWriter;)V

    :cond_20
    const-string v0, ", activityId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ", displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", windowToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v0, :cond_4c

    const-string v0, ", parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_4c
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    if-lez v0, :cond_5a

    const-string v0, ", flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_5a
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_63

    const-string v0, ", hasExtras"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getActivityId()Landroid/app/assist/ActivityId;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    :goto_8
    return-object v0
.end method

.method public getDisplayId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    return-object v0
.end method

.method public getParentSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    :goto_d
    return-object v0
.end method

.method public getTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public setParentSessionId(I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_61

    :cond_4d
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_61

    const-string v1, ", hasExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    :goto_61
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v1, :cond_70

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_70
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_13
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_32
    return-void
.end method
