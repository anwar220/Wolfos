# classes3.dex

.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_NETMEETING:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    return-object p2

    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const v0, 0x1040481

    return v0

    :pswitch_7  #0x8
    const v0, 0x1040486

    return v0

    :pswitch_b  #0x7
    const v0, 0x1040484

    return v0

    :pswitch_f  #0x6
    const v0, 0x1040483

    return v0

    :pswitch_13  #0x5
    const v0, 0x1040482

    return v0

    :pswitch_17  #0x4
    const v0, 0x1040487

    return v0

    :pswitch_1b  #0x3
    const v0, 0x1040488

    return v0

    :pswitch_1f  #0x2
    const v0, 0x1040489

    return v0

    :pswitch_23  #0x1
    const v0, 0x1040485

    return v0

    :pswitch_27  #0x0
    const v0, 0x1040480

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_23  #00000001
        :pswitch_1f  #00000002
        :pswitch_1b  #00000003
        :pswitch_17  #00000004
        :pswitch_13  #00000005
        :pswitch_f  #00000006
        :pswitch_b  #00000007
        :pswitch_7  #00000008
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p2

    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2

    packed-switch p0, :pswitch_data_14

    const v0, 0x104048a

    return v0

    :pswitch_7  #0x3
    const v0, 0x104048c

    return v0

    :pswitch_b  #0x2
    const v0, 0x104048d

    return v0

    :pswitch_f  #0x1
    const v0, 0x104048b

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_b  #00000002
        :pswitch_7  #00000003
    .end packed-switch
.end method
