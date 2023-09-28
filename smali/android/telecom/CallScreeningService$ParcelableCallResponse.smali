# classes3.dex

.class public Landroid/telecom/CallScreeningService$ParcelableCallResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableCallResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallScreeningService$ParcelableCallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallComposerAttachmentsToShow:I

.field private final mShouldDisallowCall:Z

.field private final mShouldRejectCall:Z

.field private final mShouldScreenCallViaAudioProcessing:Z

.field private final mShouldSilenceCall:Z

.field private final mShouldSkipCallLog:Z

.field private final mShouldSkipNotification:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/CallScreeningService$ParcelableCallResponse$1;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$ParcelableCallResponse$1;-><init>()V

    sput-object v0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    return-void
.end method

.method private constructor <init>(ZZZZZZI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    iput-boolean p2, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    iput-boolean p3, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    iput-boolean p4, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    iput-boolean p5, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    iput-boolean p6, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    iput p7, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZILandroid/telecom/CallScreeningService$ParcelableCallResponse-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telecom/CallScreeningService$ParcelableCallResponse;-><init>(ZZZZZZI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallComposerAttachmentsToShow()I
    .registers 2

    iget v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    return v0
.end method

.method public shouldDisallowCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    return v0
.end method

.method public shouldRejectCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    return v0
.end method

.method public shouldScreenCallViaAudioProcessing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    return v0
.end method

.method public shouldSilenceCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    return v0
.end method

.method public shouldSkipCallLog()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    return v0
.end method

.method public shouldSkipNotification()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    return v0
.end method

.method public toCallResponse()Landroid/telecom/CallScreeningService$CallResponse;
    .registers 3

    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setShouldScreenCallViaAudioProcessing(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setCallComposerAttachmentsToShow(I)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
