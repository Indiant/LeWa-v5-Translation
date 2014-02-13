.class public Lcom/android/deskclock/worldclock/WorldClockAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "WorldClockAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private chinaCalendar:Ljava/util/Calendar;

.field private chinaTime:J

.field private face:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mDefaultCalendar:Ljava/util/Calendar;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSelectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I

.field private misInMultiChoiceMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mSelectIds:Ljava/util/ArrayList;

    .line 45
    const v1, 0x7f04002c

    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mTextViewResourceId:I

    .line 46
    const-string v1, "Europe/Budapest"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 47
    .local v0, "timeZone":Ljava/util/TimeZone;
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaCalendar:Ljava/util/Calendar;

    .line 48
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaTime:J

    .line 49
    const-string v1, "windy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chinaTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p3, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mItemsList:Ljava/util/List;

    .line 51
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mDefaultCalendar:Ljava/util/Calendar;

    .line 54
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Lcom/android/deskclock/Utils;->getFontTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->face:Landroid/graphics/Typeface;

    .line 56
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mTextViewResourceId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 61
    .local v17, "view":Landroid/view/View;
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mItemsList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v17

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mItemsList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 66
    .local v9, "item":Ljava/lang/String;
    const v18, 0x7f10008e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, "cityName":Landroid/widget/TextView;
    const v18, 0x7f100002

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/DigitalClock;

    .line 69
    .local v8, "digitalClock":Lcom/android/deskclock/DigitalClock;
    const v18, 0x7f10003e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 70
    .local v12, "newAmPmTx":Landroid/widget/TextView;
    invoke-virtual {v8, v12}, Lcom/android/deskclock/DigitalClock;->setNewAmPmTx(Landroid/widget/TextView;)V

    .line 71
    const v18, 0x7f10008b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/deskclock/LewaAnalogClock;

    .line 73
    .local v11, "myAnalogClock":Lcom/android/deskclock/LewaAnalogClock;
    const v18, 0x7f10003f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 74
    .local v13, "select":Landroid/widget/CheckBox;
    const v18, 0x7f10005c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 76
    .local v16, "time_compare":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->misInMultiChoiceMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 77
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_1
    const v18, 0x7f100030

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    .local v5, "date":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/deskclock/worldclock/ClockCityUtils;->getCityTimeZoneByWeatherID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 84
    .local v15, "timeZoneId":Ljava/lang/String;
    const-string v18, "windy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "timezoneId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->face:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    .line 87
    .local v14, "timeZone":Ljava/util/TimeZone;
    invoke-static {v14}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 88
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v11, v2}, Lcom/android/deskclock/LewaAnalogClock;->setmCalendar(Ljava/util/Calendar;)V

    .line 89
    invoke-virtual {v8, v2}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/deskclock/worldclock/ClockCityUtils;->getCityNameByWeatherID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v6, 0x7f0c0052

    .line 93
    .local v6, "dateresource":I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 94
    .local v4, "d":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mDefaultCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 95
    .local v7, "defaultLocationDate":I
    const-string v18, "windy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "chinahour="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",hour="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "am_pm="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x9

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    :cond_2
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    if-nez v18, :cond_6

    .line 97
    :cond_3
    const v18, 0x7f020052

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/deskclock/DigitalClock;->setTextColor(I)V

    .line 109
    :goto_2
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->chinaCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sub-int v10, v18, v19

    .line 110
    .local v10, "left_time":I
    if-gez v10, :cond_7

    .line 111
    neg-int v10, v10

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0c0073

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_a

    .line 117
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    .line 118
    const v6, 0x7f0c0052

    .line 131
    :cond_4
    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 79
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "d":I
    .end local v5    # "date":Landroid/widget/TextView;
    .end local v6    # "dateresource":I
    .end local v7    # "defaultLocationDate":I
    .end local v10    # "left_time":I
    .end local v14    # "timeZone":Ljava/util/TimeZone;
    .end local v15    # "timeZoneId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 103
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "d":I
    .restart local v5    # "date":Landroid/widget/TextView;
    .restart local v6    # "dateresource":I
    .restart local v7    # "defaultLocationDate":I
    .restart local v14    # "timeZone":Ljava/util/TimeZone;
    .restart local v15    # "timeZoneId":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 114
    .restart local v10    # "left_time":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0c0074

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 119
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    .line 120
    const v6, 0x7f0c0054

    goto :goto_4

    .line 122
    :cond_9
    const v6, 0x7f0c0053

    goto :goto_4

    .line 125
    :cond_a
    if-le v4, v7, :cond_b

    .line 126
    const v6, 0x7f0c0054

    goto :goto_4

    .line 127
    :cond_b
    if-ge v4, v7, :cond_4

    .line 128
    const v6, 0x7f0c0053

    goto :goto_4
.end method

.method public getmSelectIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mSelectIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "lisView"    # Landroid/widget/ListView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mListView:Landroid/widget/ListView;

    .line 149
    return-void
.end method

.method public setisInMultiChoiceMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->misInMultiChoiceMode:Z

    .line 145
    return-void
.end method

.method public setmSelectIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "mSelectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->mSelectIds:Ljava/util/ArrayList;

    .line 141
    return-void
.end method
