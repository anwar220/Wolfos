# classes2.dex

.class Landroid/view/contentcapture/ContentCaptureEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(IIJ)V

    const-class v5, Landroid/view/autofill/AutofillId;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    if-eqz v5, :cond_1f

    invoke-virtual {v4, v5}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_1f
    sget-object v7, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v4, v7}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillIds(Ljava/util/ArrayList;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_2a
    invoke-static {p1}, Landroid/view/contentcapture/ViewNode;->readFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ViewNode;

    move-result-object v8

    if-eqz v8, :cond_33

    invoke-virtual {v4, v8}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v9, -0x1

    if-eq v1, v9, :cond_40

    const/4 v10, -0x2

    if-ne v1, v10, :cond_47

    :cond_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_47
    if-eq v1, v9, :cond_4c

    const/4 v9, 0x6

    if-ne v1, v9, :cond_57

    :cond_4c
    const-class v9, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_57
    const/16 v9, 0x9

    if-ne v1, v9, :cond_66

    const-class v9, Landroid/graphics/Insets;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Insets;

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_66
    const/16 v9, 0xa

    if-ne v1, v9, :cond_75

    const-class v9, Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    :cond_75
    const/4 v6, 0x3

    if-ne v1, v6, :cond_94

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreSelectionSpans(Landroid/view/contentcapture/ContentCaptureEvent;)V

    :cond_94
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3

    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p1

    return-object p1
.end method
