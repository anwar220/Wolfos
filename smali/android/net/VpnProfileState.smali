# classes2.dex

.class public final Landroid/net/VpnProfileState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnProfileState$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/VpnProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_FAILED:I = 0x3


# instance fields
.field private final mAlwaysOn:Z

.field private final mLockdown:Z

.field private final mSessionKey:Ljava/lang/String;

.field private final mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/VpnProfileState$1;

    invoke-direct {v0}, Landroid/net/VpnProfileState$1;-><init>()V

    sput-object v0, Landroid/net/VpnProfileState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/VpnProfileState;->mState:I

    iput-object p2, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    iput-boolean p4, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/VpnProfileState;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/VpnProfileState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/VpnProfileState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private convertStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_12

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "FAILED"

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "CONNECTING"

    return-object v0

    :pswitch_f  #0x0
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/VpnProfileState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/VpnProfileState;

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_37

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v3

    if-ne v2, v3, :cond_37

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    :goto_38
    return v1
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAlwaysOn()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    return v0
.end method

.method public isLockdownEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/VpnProfileState;->convertStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Always-on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
