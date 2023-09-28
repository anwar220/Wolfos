# classes3.dex

.class public abstract Landroid/service/textclassifier/ITextClassifierService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierService"

.field static final TRANSACTION_onClassifyText:I = 0x2

.field static final TRANSACTION_onConnectedStateChanged:I = 0xa

.field static final TRANSACTION_onCreateTextClassificationSession:I = 0x6

.field static final TRANSACTION_onDestroyTextClassificationSession:I = 0x7

.field static final TRANSACTION_onDetectLanguage:I = 0x8

.field static final TRANSACTION_onGenerateLinks:I = 0x3

.field static final TRANSACTION_onSelectionEvent:I = 0x4

.field static final TRANSACTION_onSuggestConversationActions:I = 0x9

.field static final TRANSACTION_onSuggestSelection:I = 0x1

.field static final TRANSACTION_onTextClassifierEvent:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextClassifierService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xa
    const-string/jumbo v0, "onConnectedStateChanged"

    return-object v0

    :pswitch_9  #0x9
    const-string/jumbo v0, "onSuggestConversationActions"

    return-object v0

    :pswitch_d  #0x8
    const-string/jumbo v0, "onDetectLanguage"

    return-object v0

    :pswitch_11  #0x7
    const-string/jumbo v0, "onDestroyTextClassificationSession"

    return-object v0

    :pswitch_15  #0x6
    const-string/jumbo v0, "onCreateTextClassificationSession"

    return-object v0

    :pswitch_19  #0x5
    const-string/jumbo v0, "onTextClassifierEvent"

    return-object v0

    :pswitch_1d  #0x4
    const-string/jumbo v0, "onSelectionEvent"

    return-object v0

    :pswitch_21  #0x3
    const-string/jumbo v0, "onGenerateLinks"

    return-object v0

    :pswitch_25  #0x2
    const-string/jumbo v0, "onClassifyText"

    return-object v0

    :pswitch_29  #0x1
    const-string/jumbo v0, "onSuggestSelection"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_25  #00000002
        :pswitch_21  #00000003
        :pswitch_1d  #00000004
        :pswitch_19  #00000005
        :pswitch_15  #00000006
        :pswitch_11  #00000007
        :pswitch_d  #00000008
        :pswitch_9  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.textclassifier.ITextClassifierService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_11c

    packed-switch p1, :pswitch_data_122

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onConnectedStateChanged(I)V

    goto/16 :goto_11b

    :pswitch_28  #0x9
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/ConversationActions$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/ConversationActions$Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto/16 :goto_11b

    :pswitch_48  #0x8
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/TextLanguage$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLanguage$Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto/16 :goto_11b

    :pswitch_68  #0x7
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    goto/16 :goto_11b

    :pswitch_78  #0x6
    sget-object v2, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationContext;

    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    goto/16 :goto_11b

    :pswitch_90  #0x5
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassifierEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    goto :goto_11b

    :pswitch_a7  #0x4
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_11b

    :pswitch_be  #0x3
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_11b

    :pswitch_dd  #0x2
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassification$Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_11b

    :pswitch_fc  #0x1
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    sget-object v3, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextSelection$Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    nop

    :goto_11b
    return v1

    :pswitch_data_11c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_fc  #00000001
        :pswitch_dd  #00000002
        :pswitch_be  #00000003
        :pswitch_a7  #00000004
        :pswitch_90  #00000005
        :pswitch_78  #00000006
        :pswitch_68  #00000007
        :pswitch_48  #00000008
        :pswitch_28  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch
.end method
