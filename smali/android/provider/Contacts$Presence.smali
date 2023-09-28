# classes3.dex

.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PresenceColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p0, :pswitch_data_18

    const v0, 0x108006a

    return v0

    :pswitch_7  #0x5
    const v0, 0x108006b

    return v0

    :pswitch_b  #0x4
    const v0, 0x1080068

    return v0

    :pswitch_f  #0x2, 0x3
    const v0, 0x1080067

    return v0

    :pswitch_13  #0x1
    const v0, 0x1080069

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_f  #00000002
        :pswitch_f  #00000003
        :pswitch_b  #00000004
        :pswitch_7  #00000005
    .end packed-switch
.end method

.method public static final setPresenceIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
