# classes.dex

.class public abstract Landroid/app/people/IPeopleManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/people/IPeopleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IPeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IPeopleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addOrUpdateStatus:I = 0x7

.field static final TRANSACTION_clearStatus:I = 0x8

.field static final TRANSACTION_clearStatuses:I = 0x9

.field static final TRANSACTION_getConversation:I = 0x1

.field static final TRANSACTION_getLastInteraction:I = 0x6

.field static final TRANSACTION_getRecentConversations:I = 0x2

.field static final TRANSACTION_getStatuses:I = 0xa

.field static final TRANSACTION_isConversation:I = 0x5

.field static final TRANSACTION_registerConversationListener:I = 0xb

.field static final TRANSACTION_removeAllRecentConversations:I = 0x4

.field static final TRANSACTION_removeRecentConversation:I = 0x3

.field static final TRANSACTION_unregisterConversationListener:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.people.IPeopleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/people/IPeopleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.people.IPeopleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/people/IPeopleManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/people/IPeopleManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/people/IPeopleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/people/IPeopleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string/jumbo v0, "unregisterConversationListener"

    return-object v0

    :pswitch_9  #0xb
    const-string/jumbo v0, "registerConversationListener"

    return-object v0

    :pswitch_d  #0xa
    const-string v0, "getStatuses"

    return-object v0

    :pswitch_10  #0x9
    const-string v0, "clearStatuses"

    return-object v0

    :pswitch_13  #0x8
    const-string v0, "clearStatus"

    return-object v0

    :pswitch_16  #0x7
    const-string v0, "addOrUpdateStatus"

    return-object v0

    :pswitch_19  #0x6
    const-string v0, "getLastInteraction"

    return-object v0

    :pswitch_1c  #0x5
    const-string v0, "isConversation"

    return-object v0

    :pswitch_1f  #0x4
    const-string/jumbo v0, "removeAllRecentConversations"

    return-object v0

    :pswitch_23  #0x3
    const-string/jumbo v0, "removeRecentConversation"

    return-object v0

    :pswitch_27  #0x2
    const-string v0, "getRecentConversations"

    return-object v0

    :pswitch_2a  #0x1
    const-string v0, "getConversation"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_27  #00000002
        :pswitch_23  #00000003
        :pswitch_1f  #00000004
        :pswitch_1c  #00000005
        :pswitch_19  #00000006
        :pswitch_16  #00000007
        :pswitch_13  #00000008
        :pswitch_10  #00000009
        :pswitch_d  #0000000a
        :pswitch_9  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.people.IPeopleManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_132

    packed-switch p1, :pswitch_data_138

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/people/IPeopleManager$Stub;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_130

    :pswitch_2f  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_130

    :pswitch_4e  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_130

    :pswitch_69  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_130

    :pswitch_80  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_130

    :pswitch_9b  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/people/ConversationStatus;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_130

    :pswitch_ba  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_130

    :pswitch_d4  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_130

    :pswitch_ee  #0x4
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->removeAllRecentConversations()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_130

    :pswitch_f5  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_130

    :pswitch_10b  #0x2
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_130

    :pswitch_116  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_130
    return v1

    nop

    :pswitch_data_132
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_116  #00000001
        :pswitch_10b  #00000002
        :pswitch_f5  #00000003
        :pswitch_ee  #00000004
        :pswitch_d4  #00000005
        :pswitch_ba  #00000006
        :pswitch_9b  #00000007
        :pswitch_80  #00000008
        :pswitch_69  #00000009
        :pswitch_4e  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
